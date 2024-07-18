package users;

import com.intuit.karate.junit5.Karate;

public class karateRunner {

    @Karate.Test
    Karate testSignup() {
        return Karate.run("signup.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testLogin() {
        return Karate.run("login.feature").relativeTo(getClass());
    }


}
