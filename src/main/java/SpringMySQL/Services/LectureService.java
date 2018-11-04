package SpringMySQL.Services;

import SpringMySQL.models.Lecture;
import SpringMySQL.repository.LectureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class LectureService {

    @Autowired
    private LectureRepository lectureRepository;

    public Lecture findLectureById(int id){
        return lectureRepository.findByLectureId( id );
    }

}
