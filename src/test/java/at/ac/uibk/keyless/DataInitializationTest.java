package at.ac.uibk.keyless;

import at.ac.uibk.keyless.Repositories.UserRepository;
import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;


/**
 * Created by Lukas Dötlinger.
 */
@ContextConfiguration(classes = Application.class)
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class DataInitializationTest {

  @Autowired
  UserRepository userRepository;

  @Test
  public void testDataInitialization() {
    assertThat(userRepository.findAll().size(), is(greaterThan(0)));
    assertThat(userRepository.findByFirstName("admin").size(), is(greaterThan(0)));
  }
}