package at.ac.uibk.keyless.Services;

import at.ac.uibk.keyless.Models.*;
import at.ac.uibk.keyless.Repositories.KeyRepository;
import at.ac.uibk.keyless.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Lukas Dötlinger.
 */
@Service
public class KeyService {

  @Autowired
  KeyRepository keyRepository;

  @Autowired
  UserRepository userRepository;

  @Autowired
  UserService userService;

  @Autowired
  SystemLogService logService;

  @Autowired
  PasswordEncoder passwordEncoder;

  @Autowired
  KeyPermissionService keyPermissionService;


  public Key getKeyById(Long id) {
    return keyRepository.findByKeyId(id);
  }


  public List<Key> getAllKeys() {
    return keyRepository.findAll();
  }

  /**
   * @param id Id of the key to return.
   * @param username Email of the requesting user.
   * @return Return the key if the user is the owner.
   */
  public Key getKeyByIdForUser(Long id, String username) {
    Key k = getKeyById(id);
    if (k.getOwner().getEmail().equals(username)) {
      return k;
    }
    return null;
  }

  /**
   * Method to get a Key by its uid
   * @return a Key or null
   */
  public Key getKeyByUid(String uid) {
    return keyRepository.findAll().stream()
      .filter(k -> k.getUid() != null)
      .filter(k -> k.getUid().equals(uid))
      .findFirst()
      .orElse(null);
  }

  /**
   * Method to set the mode of a Key to BLOCKED
   */
  public void deactivateKey(Key key) {
    key.setMode(KeyMode.DISABLED);
    keyRepository.save(key);
  }

  /**
   * Function to edit an existing key.
   * TODO: Extend method for new parameters.
   */
  public void editKey(Long keyId, Key newKey, String username) {
    Key toEdit = keyRepository.findByKeyId(keyId);
    if (toEdit != null) {
      toEdit.setKeyName(newKey.getKeyName());
      toEdit.setCustomPermission(newKey.isCustomPermission());
      toEdit.setValidFrom(newKey.getValidFrom());
      toEdit.setValidTo(newKey.getValidTo());
      keyRepository.save(toEdit);
      logService.logEvent("User "+username+" edited key "+toEdit.getKeyId(),
        userService.getUserByEmail(username).getUserId());
    }
  }

  public void registerKey(String aid, String content, String username, String keyName, Key toSave, String uid) {
    User owner = userRepository.findFirstByEmail(username);
    toSave.setAid(aid);
    toSave.setContent(passwordEncoder.encode(content));
    toSave.setOwner(owner);
    toSave.setKeyName(keyName);
    toSave.setUid(uid);
    toSave.setCustomPermission(false);
    Key saved = keyRepository.save(toSave);
    keyPermissionService.savePermission(new KeyPermission(saved));
    logService.logEvent("User "+username+" registered key "+saved.getKeyId(),
      userService.getUserByEmail(username).getUserId());
  }

  public List<Key> getKeysForUser(String username) {
    User operator = userRepository.findFirstByEmail(username);
    if (userService.hasRole(operator, "Admin")) {
      return getAllKeys();
    } else {
      return keyRepository.findKeyForUser(operator);
    }
  }

  /**
   * Method to delete a Key if the operating user is an owner or has the role Admin.
   */
  public void deleteKey(Long keyId, String username) {
    Key toDelete = keyRepository.findByKeyId(keyId);
    if (toDelete.getOwner().getEmail().equals(username) ||
      userService.hasRole(toDelete.getOwner(), "Admin")) {
      keyRepository.delete(toDelete);
      logService.logEvent("User "+username+" deleted key "+toDelete.getKeyName(),
        userService.getUserByEmail(username).getUserId());
    }
  }

  public boolean isValid(Key key) {
    Date current = new Date();
    if (key.getMode().toString().equals("Disabled")) {
      return false;
    }
    return (((key.getValidFrom().before(current) && key.getValidTo().after(current))
      && keyPermissionService.isValid(key.getPermission())) || (key.getMode().toString().equals("Enabled")));
  }

  public boolean isValidContent(String content, Lock lock) {
    return keyRepository.findAll().stream()
      .filter(this::isValid)
      .filter(k -> k.contentMatches(content))
      .anyMatch(k -> lock.getRelevantKeyIds().contains(k.getKeyId()));
  }
}