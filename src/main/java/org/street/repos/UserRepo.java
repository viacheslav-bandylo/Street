package org.street.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.street.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}
