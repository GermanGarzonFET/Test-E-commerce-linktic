package PruebaT.ecommerce.security.repository;

import PruebaT.ecommerce.security.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

/**
 * Repositorio para la entidad {@link User}.
 *
 * Proporciona métodos para realizar operaciones CRUD en la base de datos.
 * Extiende {@link JpaRepository} para heredar métodos estándar de JPA.
 *
 * @author German Garzon
 * @version 1.0
 */
public interface UserRepository extends JpaRepository<User, Integer> {

    /**
     * Busca un usuario por su nombre de usuario.
     *
     * @param username el nombre de usuario.
     * @return un Optional que contiene el usuario si se encuentra, de lo contrario vacío.
     */
    Optional<User> findByUsername(String username);


}
