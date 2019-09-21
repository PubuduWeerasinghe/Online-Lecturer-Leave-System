package SpringMySQL.controllers;

import SpringMySQL.Services.LectureService;
import SpringMySQL.models.Lecture;
import SpringMySQL.models.User;
import SpringMySQL.repository.LectureRepository;
import SpringMySQL.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;


@Controller
public class LectureController {

    @Autowired
    private LectureRepository lectureRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private LectureService lectureService;


    //Lecturers' Details
    @RequestMapping("/Lecturerdetails")
    public ModelAndView doHome(Model model) {

        ModelAndView mv = new ModelAndView( "indexx" );
        List<Lecture> users = (List<Lecture>) lectureRepository.findAll();
        System.out.println( users );
        for (Lecture user : users) {
            System.out.println( user.toString() );
        }
        model.addAttribute( "message","Success - You are successfully logged" );

        return mv.addObject( "lectureList", users );
    }


    //Lecturer Delete
    @RequestMapping(value = "/delete/{lectureId}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("lectureId") int lectureId) {

        ModelAndView mv = new ModelAndView( "redirect:/Lecturerdetails" );
        lectureRepository.deleteById( lectureId );

        return mv;
    }


    //Lecturer Edit
    @RequestMapping(value = "/edit/{lectureId}", method = RequestMethod.GET)
    public ModelAndView doview(@PathVariable("lectureId") int lectureId) {

        ModelAndView mv = new ModelAndView( "appli" );
        mv.addObject( "lists", lectureRepository.findById( lectureId ).get() );

        return mv;
    }



    //Lecturer Login
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ModelAndView dologin(){

        ModelAndView mv=new ModelAndView( "LecturerLogin" );

        return mv;
    }


    //New Lecturer Addition
    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public ModelAndView dosave(@RequestParam("lectureId") String lectureId,@RequestParam("lecId") String lecId,@RequestParam("lectureName") String lectureName,
                               @RequestParam("designation") String designation,@RequestParam("department") String department,
                               @RequestParam("email") String email,@RequestParam("radio") String gender, @RequestParam("phoneNo") int phoneNo
            ,@RequestParam("password") String password){
        ModelAndView mv=new ModelAndView( "redirect:/Lecturerdetails" );
        Lecture lec;

        if(!lectureId.isEmpty()){
            lec=(Lecture)lectureRepository.findById( Integer.parseInt( lectureId )).get();
        }else{
            lec=new Lecture(  );
        }
        lec.setLecId( lecId );
        lec.setLectureName(  lectureName);
        lec.setDesignation( designation );
        lec.setDepartment( department );
        lec.setEmail( email );
        lec.setGender(gender);
        lec.setPhoneNo( phoneNo );
        lec.setPassword( password );

        lectureRepository.save( lec );
        return mv;
    }

    //Save Edited Lecturer Details
    @RequestMapping(value = "/saveEdit",method = RequestMethod.POST)
    public ModelAndView dosave(@RequestParam("lectureId") String lectureId,@RequestParam("lectureName") String lectureName,
                               @RequestParam("designation") String designation,@RequestParam("department") String department,
                               @RequestParam("email") String email, @RequestParam("phoneNo") int phoneNo,@RequestParam("radio") String gender){
        ModelAndView mv=new ModelAndView( "redirect:/Lecturerdetails" );
        Lecture lec;

        if(!lectureId.isEmpty()){
            lec=(Lecture)lectureRepository.findById( Integer.parseInt( lectureId )).get();
        }else{
            lec=new Lecture(  );
        }

        lec.setLectureName(  lectureName);
        lec.setDesignation( designation );
        lec.setDepartment( department );
        lec.setEmail( email );
        lec.setPhoneNo( phoneNo );
        lec.setGender( gender );

        lectureRepository.save( lec );
        return mv;
    }

    @RequestMapping(value = "/sa",method = RequestMethod.POST)
    public ModelAndView va(@Valid @ModelAttribute("lecture") Lecture lecture, BindingResult result, Model model){

        if(result.hasErrors()){
            model.addAttribute( "msg","Length" );
            ModelAndView mv1=new ModelAndView( "Form" );

            return mv1;
        }
        ModelAndView mv1=new ModelAndView( "redirect:/save" );

        return mv1;

    }


}
