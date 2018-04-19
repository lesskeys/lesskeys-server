package at.ac.uibk.keyless.Controllers;

import at.ac.uibk.keyless.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Lukas Dötlinger.
 */
@RestController
public class LogInController {

  @Autowired
  private UserRepository userRepository;

  @RequestMapping(value = "/login", method = RequestMethod.POST)
  public Map<String, String> logInUser(@RequestBody Map<String, String> data) {
    Map<String, String> response = new HashMap<>();
    if (userRepository.findByFirstName(data.get("username")).size() > 0) {
      response.put("answer", "Success");
      return response;
    }
    response.put("answer", "Failure");
    return response;
  }

}
