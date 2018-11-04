package SpringMySQL.repository;

import SpringMySQL.models.Lecture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.PathVariable;

public interface LectureRepository extends JpaRepository<Lecture,Integer> {

    Lecture findByLectureId(int id);

    Lecture findByEmail(@PathVariable("email") String email);

}
