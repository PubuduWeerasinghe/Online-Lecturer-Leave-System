package SpringMySQL.controllers;

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
public class UserRequestController {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping("/list/{Id}")
    public Iterable<User> list() {
        return userRepository.findAll();
    }

    @RequestMapping("/add")
    public ModelAndView doHome() {

        ModelAndView mv = new ModelAndView( "A" );
        List<User> users = (List<User>) userRepository.findAll();
        System.out.println( users );
        for (User user : users) {
            System.out.println( user.toString() );
        }
        return mv.addObject( "lectureList", users );
    }

//    @GetMapping("/form")
//    private ModelAndView A(){
//        User u1 = new User();
//       Lecture lecture =  lectureRepository.findById( 2 ).get();
//       ModelAndView mv = new ModelAndView( "Form" );
//       mv.addObject( "user" , u1 );
//       mv.addObject( "lecture" , lecture );
//        return mv;
//    }

    @GetMapping("/form")
    private ModelAndView A(){
        User u1 = new User();
        //Lecture lecture =  lectureRepository.findById( 2 ).get();
        ModelAndView mv = new ModelAndView( "Form" );
        mv.addObject( "user" , u1 );
        //mv.addObject( "lecture" , lecture );
        return mv;
    }



    @RequestMapping(value = "/sav",method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("user") User user){
        System.out.println("AAAA");
        ModelAndView mv=new ModelAndView( "Form" );

            userRepository.save( user );
        return mv;
    }
    @RequestMapping(value = "/s",method = RequestMethod.POST)
    public ModelAndView valid(@Valid @ModelAttribute("user") User user, BindingResult result,Model model){

        if(result.hasErrors()){
            System.out.println("AAAA");
            model.addAttribute( "msg","Length" );
            ModelAndView mv1=new ModelAndView( "Form" );
            return mv1;
        }

        ModelAndView mv1=new ModelAndView( "Form" );
        userRepository.save( user );
        return mv1;


    }

}
