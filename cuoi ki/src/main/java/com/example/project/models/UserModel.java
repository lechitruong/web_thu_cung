package com.example.project.models;
import com.example.project.entities.*;

import java.util.ArrayList;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;

public class UserModel {
    private List<User>users;
    public UserModel() {
        users = new ArrayList<User>();
        users.add(new User("acc1","$2a$10$SqbQ6Hw.uNuDUKOkzvDvhOONyxtfV2/vatNx1lIG62vM7gaeS.eue","phone1","email1", "name1","create1"));
        users.add(new User("acc2","$2a$10$TFyY89ai846QFroVu0qUreutLMYgzk6xkxRJvTvEsoaVoK2OOX0MG","phone2","email2", "name2","create2"));
    }
    // tra ve account cua username
    public User findByUsername(String username) {
        User user = null;
        for (User u : users) {
            if(u.getUsername().equalsIgnoreCase(username)){
                user = u;
            }
        }
        return user;
    }
    // login(check voi password da dc ma hoa)
    public boolean login(String username, String password) {
        User user = findByUsername(username);
        if(user != null) {
            return BCrypt.checkpw(password, user.getPassword());
        }
        return false;
    }
}
