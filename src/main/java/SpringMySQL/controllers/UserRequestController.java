package SpringMySQL.controllers;
import SpringMySQL.models.Lecture;
import SpringMySQL.models.User;
import SpringMySQL.repository.LectureRepository;
import SpringMySQL.repository.UserRepository;
import com.twilio.Twilio;
import com.twilio.type.PhoneNumber;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.validation.Valid;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Controller
public class UserRequestController {


    @Autowired
    private UserRepository userRepository;

    @Autowired
    private LectureRepository lectureRepository;

    //Home Page
    @RequestMapping("/Home")
    public String AA(){
        return "home2";
    }

    //Leaves of Lecturers
    @RequestMapping("/leave")
    public ModelAndView doHome() {

        ModelAndView mv = new ModelAndView( "requests" );
         List<User> users =  userRepository.findAll();
        System.out.println( users );
        for (User user : users) {
            System.out.println( user.toString() );
        }

        return mv.addObject( "lectureList", users );
    }

    //Status of the Leave
    @RequestMapping("/respond")
    public ModelAndView doHom() {

        ModelAndView mv = new ModelAndView( "LecHome" );
        List<User> users = (List<User>) userRepository.findAll();
        System.out.println( users );
        for (User user : users) {
            System.out.println( user.toString() );
            System.out.println(user.getIdd());

//            if(user.getIdd()==61){
//                System.out.println(user.getLecture().getLectureName());
//
//            }
        }
        return mv.addObject( "lectureList", users );
    }

    //Leave Form
    @GetMapping("/form/{id}")
    private ModelAndView log(@PathVariable("id") Integer lectureId) {

        ModelAndView mv = new ModelAndView( "LecturerHome" );
        Lecture lecture = lectureRepository.findById( lectureId ).get();


//        User user = userRepository.findById( lectureId ).get();
//        System.out.println(user.getIdd());

        LocalDate date = LocalDate.now();
        LocalTime time = LocalTime.now();
        mv.addObject( "date", date );
        mv.addObject( "time", time );
        mv.addObject( "lecture", lecture );
        return mv;
    }



//    @RequestMapping(value = "/saved",method = RequestMethod.POST)
//    public ModelAndView d(@ModelAttribute("user") User user, BindingResult result,Model model){
//        if(result.hasErrors()){
//            model.addAttribute( "msg","Length" );
//            ModelAndView mv2=new ModelAndView( "B" );
//            return mv2;
//        }
//        ModelAndView mv2=new ModelAndView( "B" );
//        userRepository.save( user );
//        return mv2;
//    }

//    @RequestMapping(value = "/saveee",method = RequestMethod.POST)
//    public ModelAndView dosave(
//                                @RequestParam("Id") String Id,
//                               @RequestParam("decision") String decision){
//        ModelAndView mv=new ModelAndView( "B" );
//        User user2;
//
//        if(!Id.isEmpty()){
//            user2=(User) userRepository.findById( Integer.parseInt( Id )).get();
//        }else{
//            user2=new User(  );
//        }
//
//        user2.setDecision( decision );
//        userRepository.save( user2 );
//        return mv;
//    }


    //Leave Sending
    @RequestMapping(value = "/sav/{Id}",method = RequestMethod.GET)
    public ModelAndView save(@PathVariable("Id") Integer Id){

        List<User> users = (List<User>) userRepository.findAll();
        System.out.println( users );
        for (User user : users) {
            int a = user.getId();
            System.out.println( user.getId() );
            System.out.println( a );
        }
            ModelAndView mv = new ModelAndView( "response" );
            mv.addObject( "list", userRepository.findById( Id ).get() );
            return mv;
        }


//    @RequestMapping(value = "/saav",method = RequestMethod.POST)
//    public ModelAndView saveq(){
//
//
//        User user=new User();
//        int a= user.getId();
//        System.out.println(user.getId());
//
//        ModelAndView mv=new ModelAndView( "responsee" );
//        mv.addObject( "list",userRepository.findById( a ).get());
//        return mv;
//    }


    //
    @RequestMapping(value = "/s",method = RequestMethod.POST)
    public ModelAndView valid(@Valid @ModelAttribute("user") User user, BindingResult result,Model model){

        if(result.hasErrors()){
            System.out.println("AAAA");
            model.addAttribute( "msg","Length" );
            ModelAndView mv1=new ModelAndView( "redirect:/respond" );
            return mv1;
        }

        ModelAndView mv1=new ModelAndView( "redirect:/respond" );
        Integer lecid = user.getIdd();
        Lecture lecture = lectureRepository.findById( lecid ).get();
        user.setLecture( lecture );
        userRepository.save( user );
        return mv1;
    }

    //Lecturer Login Page
    @RequestMapping("/Leclog")
    public String B(){
        return "LecLogin";
    }

    //Lecturer Login Validation
    @RequestMapping(value = "/LLog",method = RequestMethod.POST)
    public ModelAndView valid(@RequestParam("email") String email,
                              @RequestParam("password") String password,Model model) {

        System.out.println(email);
        System.out.println(password);

        ModelAndView mv1 = new ModelAndView( "redirect:/Leclog" );
        List<Lecture> lec = lectureRepository.findAll();

//        BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder(  );
//        String a = passwordEncoder.encode( password );
//        System.out.println(a);
        //if(!result.hasErrors()){
        for(Lecture lec1 : lec) {

                if (email.equals( lec1.getEmail() ) && password.equals( lec1.getPassword())) {
                    System.out.println( "AAAAAAAAA" );
                    Lecture l1 = lectureRepository.findByEmail( email );
                    int id = l1.getLectureId();
                    ModelAndView mv = new ModelAndView( "redirect:/form/" + id );
                    System.out.println( l1.toString() );
                    model.addAttribute( "A","AAAAAA" );
                    return mv;
                }
// else {
//
//                    model.addAttribute( "loginError","Error logged in" );
//                    System.out.println("BBBB");
//                    ModelAndView mv = new ModelAndView( "LecLogin" );
//                    return mv;
//                }
        }
        return mv1;
    }


    //Twillio SMS

    private final static String ACCOUNT_SID = "AC8154b2a1be30b23f079e444fa69e6772";
    private final static String AUTH_TOKEN = "228c21a0677e8700256adeaade80c255";


@RequestMapping(value = "/savv", method = RequestMethod.POST)
public ModelAndView dose(@RequestParam("Id") String Id, @RequestParam("decision") String decision){
    ModelAndView mv1=new ModelAndView( "redirect:/leave" );


    System.out.println(decision);
    char[] chars = decision.toCharArray();
    System.out.println(chars);
    if (chars[0] == 'A'){
        System.out.println("AAAA");
        String a = String.valueOf( chars[7] );
        String b = String.valueOf( chars[8] );
        System.out.println(a);
        System.out.println(b);
        Integer b1 = Integer.valueOf( a + b );
        User user = userRepository.findById( b1 ).get();

        //twilio msg
        Date date = user.getApplyDate();
        Integer telephone = user.getLecture().getPhoneNo();
        String name = user.getLecture().getLectureName();
        System.out.println(telephone);
        String tele = "+94" + telephone;
        System.out.println(tele);
        Twilio.init(ACCOUNT_SID,AUTH_TOKEN);
        com.twilio.rest.api.v2010.account.Message message = com.twilio.rest.api.v2010.account.Message.creator(new PhoneNumber(tele),new PhoneNumber( "+447447072945" ) ,name+" your leave request which "+date+ " is accepted" ).create(  );
        System.out.println(message);


        System.out.println(user.getDateFrom());
        user.setDecision( "Accepted" );
        userRepository.save(user);
    } else {
        System.out.println("BBBB");
        String a = String.valueOf( chars[8] );
        String b = String.valueOf( chars[9] );
        System.out.println(a);
        System.out.println(b);
        Integer b1 = Integer.valueOf( a + b );
        User user = userRepository.findById( b1 ).get();

        //twilio msg
        String name = user.getLecture().getLectureName();
        Integer telephone = user.getLecture().getPhoneNo();
        Date date = user.getApplyDate();
        System.out.println(telephone);
        String tele = "+94" + telephone;
        System.out.println(tele);
        Twilio.init(ACCOUNT_SID,AUTH_TOKEN);
        com.twilio.rest.api.v2010.account.Message message = com.twilio.rest.api.v2010.account.Message.creator(new PhoneNumber(tele),new PhoneNumber( "+447447072945" ) ,name+" your leave request which "+date+ " is Declined" ).create(  );
        System.out.println(message);

        System.out.println(user.getDateFrom());
        user.setDecision( "Declined" );
        userRepository.save(user);

    }
    /*User user;
    if(!Id.isEmpty()){
        user=(User) userRepository.findById(Integer.parseInt( Id )).get();
        System.out.println(decision);
    }else{
        user=new User(  );
        System.out.println("AAAAAAA");
    }
    user.setDecision( decision );

    String A=user.getDecision();
    System.out.println(A);*/

    return mv1;
}

    @RequestMapping(value = "/aaa", method = RequestMethod.POST)
    public ModelAndView saved( @Valid @ModelAttribute("user") User user, BindingResult result){


        if(result.hasErrors()){
            System.out.println("AAAA");
            ModelAndView mv1=new ModelAndView( "leclog" );
            return mv1;
        }

        ModelAndView mv1=new ModelAndView( "RequestEdit" );
        Integer userId = user.getId();
        User user2 = userRepository.findById( userId ).get();
        System.out.println(user2.getIdd());

        userRepository.save( user2 );
        return mv1;
    }


}
