package at.ac.uibk.keyless.Controllers;

import at.ac.uibk.keyless.Models.Key;
import at.ac.uibk.keyless.Services.KeyPermissionService;
import at.ac.uibk.keyless.Services.KeyService;
import at.ac.uibk.keyless.Services.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Lukas Dötlinger.
 */
@RestController
public class KeyController {

  @Autowired
  KeyService keyService;

  @Autowired
  KeyPermissionService keyPermissionService;

  @Autowired
  SessionService sessionService;


  @RequestMapping(value = "/key/register", method = RequestMethod.POST)
  public Map<String, String> registerKey(@RequestBody Map<String, String> data) {
    Map<String, String> response = new HashMap<>();
    if (sessionService.isValidSession(data.get("session"))) {
      keyService.registerKey(data.get("aid"), data.get("content"), data.get("username"), data.get("name"));
      response.put("status", "Successfully added key.");
      return response;
    }
    response.put("status", "Failed to register key.");
    return response;
  }

  @RequestMapping(value = "/key/edit", method = RequestMethod.PUT)
  public void editKey(@RequestBody Map<String, String> data) {
    if (sessionService.isValidSession(data.get("session"))) {
      Key newKey = new Key();
      newKey.setKeyName(data.get("newName"));
      newKey.setHasCustomPermission(Boolean.parseBoolean("isCustom"));
      keyService.editKey(Long.parseLong(data.get("keyId")), newKey);
    }
  }
  /*
  @RequestMapping(value = "/key/edit/permission", method = RequestMethod.PUT)
  public void editKeyPermission(@RequestBody Map<String, String> data) {
    if (sessionService.isValidSession(data.get("session"))) {
      int day = Integer.parseInt(data.get("day"));
      Key key = keyService.getKeyById(Long.parseLong(data.get("keyId")));
      keyPermissionService.editPermissionDay(day, data.get("newFrom"), data.get("newTo"), key.getPermission());
    }
  }*/

  @RequestMapping(value = "/key/delete", method = RequestMethod.POST)
  public Map<String, String> deleteKey(@RequestBody Map<String, String> data) {
    Map<String, String> toReturn = new HashMap<>();
    if (sessionService.isValidSession(data.get("session"))) {
      keyService.deleteKey(Long.parseLong(data.get("keyId")), data.get("username"));
      toReturn.put("status", "Success");
      return toReturn;
    } else {
      toReturn.put("status", "Failure");
      return toReturn;
    }
  }

  @RequestMapping(value = "/keys", method = RequestMethod.POST)
  public List<Key> getUsersKeys(@RequestBody Map<String, String> data) {
    if (sessionService.isValidSession(data.get("session"))) {
      return keyService.getKeysForUser(data.get("username"));
    }
    return null;
  }

  @RequestMapping(value = "/all-keys", method = RequestMethod.POST)
  public List<Key> getAllKeys(@RequestBody Map<String, String> data) {
    return keyService.getAllKeys();
  }
}
