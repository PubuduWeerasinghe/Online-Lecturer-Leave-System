package SpringMySQL.controllers;
import SpringMySQL.models.Admin;
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

    @Autowired
    private LectureRepository lectureRepository;

    @RequestMapping("/list/{Id}")
    public Iterable<User> list() {
        return userRepository.findAll();
    }

    @RequestMapping(value = "/e/{lectureId}", method = RequestMethod.GET)
    public ModelAndView dovie(@PathVariable("lectureId") int lectureId){
        ModelAndView mv=new ModelAndView( "A" );
        mv.addObject( "lectureList",userRepository.findById( lectureId).get());
        return mv;
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

//    @GetMapping("/for")
//    private ModelAndView AA(){
//        User u1 = userRepository.findById( 4 ).get();
//       //User lecture =  userRepository.findById( 0 ).get();
//       ModelAndView mv = new ModelAndView( "A" );
//       mv.addObject( "user" , u1 );
//       //mv.addObject( "lecture" , lecture );
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
    @RequestMapping("/Leclog")
    public String B(){
        return "LecLogin";
    }

    @RequestMapping(value = "/LLog",method = RequestMethod.POST)
    public ModelAndView valid(@RequestParam("email") String email,
                              @RequestParam("password") String password) {

        System.out.println(email);
        System.out.println(password);

        ModelAndView mv1 = new ModelAndView( "redirect:/Leclog" );
        List<Lecture> lec = lectureRepository.findAll();
        for(Lecture lec1 : lec) {

                if (email.equals( lec1.getEmail() ) && password.equals( lec1.getPassword() )) {
                    ModelAndView mv = new ModelAndView( "redirect:/form" );
                    return mv;
                }
        }
        return mv1;
    }



}
