package com.joseajcabul.SportFinal.service;
import com.joseajcabul.SportFinal.model.User;
import java.util.List;

public interface UserService {
    List<User>getAllUsers();
    User getUserById(Integer id);
    User saverUser(User user);
    User updateUser(Integer id, User user);
    void deleteUser(Integer id);
}
