package SpringMySQL.repository;

import SpringMySQL.models.Lecture;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LectureRepository extends JpaRepository<Lecture,Integer> {
    
}
