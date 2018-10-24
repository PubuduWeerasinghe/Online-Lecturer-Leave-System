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

import javax.persistence.Id;
import javax.validation.Valid;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;

@Controller
public class UserRequestController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private LectureRepository lectureRepository;

//    @RequestMapping("/list/{Id}")
//    public Iterable<User> list() {
//        return userRepository.findAll();
//    }
//
//    @RequestMapping(value = "/e/{lectureId}", method = RequestMethod.GET)
//    public ModelAndView dovie(@PathVariable("lectureId") int lectureId){
//        ModelAndView mv=new ModelAndView( "A" );
//        mv.addObject( "lectureList",userRepository.findById( lectureId).get());
//        return mv;
//    }

    @RequestMapping("/ZZ")
    public String AA(){
        return "appli";
    }

    @RequestMapping("/leave")
    public ModelAndView doHome() {

        ModelAndView mv = new ModelAndView( "requests" );
        List<User> users = (List<User>) userRepository.findAll();
        System.out.println( users );
        for (User user : users) {
            System.out.println( user.toString() );
        }
        return mv.addObject( "lectureList", users );
    }

    @RequestMapping("/respond")
    public ModelAndView doHom() {

        ModelAndView mv = new ModelAndView( "LecHome" );
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
//        //Lecture lecture =  lectureRepository.findById( 2 ).get();
//        ModelAndView mv = new ModelAndView( "B" );
//        Lecture n1 = new Lecture();
//        n1.setLectureName( "akalanka Gamage" );
//        mv.addObject( "n1",n1 );
//        mv.addObject( "user" , u1 );
//        //mv.addObject( "lecture" , lecture );
//        return mv;
//    }

    @GetMapping("/form/{id}")
    private ModelAndView log(@PathVariable("id") Integer lectureId) {

        ModelAndView mv = new ModelAndView( "leclog" );
        Lecture lecture = lectureRepository.findById( lectureId ).get();


        LocalDate date = LocalDate.now();
        LocalTime time = LocalTime.now();
        mv.addObject( "date", date );
        mv.addObject( "time", time );
        mv.addObject( "lecture", lecture );
        return mv;
    }

//        @GetMapping("A/{id}")
//        private ModelAndView lec(@PathVariable("id") Integer lectureId){
//
//            ModelAndView mv2 = new ModelAndView( "request" );
//            Lecture lecture1 =  lectureRepository.findById( lectureId ).get();
//
//
//            mv2.addObject( "lecture" , lecture1 );
//            return mv2;
//    }


    @RequestMapping(value = "/saved",method = RequestMethod.POST)
    public ModelAndView d(@ModelAttribute("user") User user, BindingResult result,Model model){
        if(result.hasErrors()){
            model.addAttribute( "msg","Length" );
            ModelAndView mv2=new ModelAndView( "B" );
            return mv2;
        }
        ModelAndView mv2=new ModelAndView( "B" );
        userRepository.save( user );
        return mv2;
    }

    @RequestMapping(value = "/saveee",method = RequestMethod.POST)
    public ModelAndView dosave(
                                @RequestParam("Id") String Id,
                               @RequestParam("decision") String decision){
        ModelAndView mv=new ModelAndView( "B" );
        User user2;

        if(!Id.isEmpty()){
            user2=(User) userRepository.findById( Integer.parseInt( Id )).get();
        }else{
            user2=new User(  );
        }

        user2.setDecision( decision );
        userRepository.save( user2 );
        return mv;
    }


    @RequestMapping(value = "/sav/{Id}",method = RequestMethod.GET)
    public ModelAndView save(@PathVariable("Id") Integer Id){

        ModelAndView mv=new ModelAndView( "response" );
        mv.addObject( "list",userRepository.findById( Id).get());
        return mv;
    }


    @RequestMapping(value = "/s",method = RequestMethod.POST)
    public ModelAndView valid(@Valid @ModelAttribute("user") User user, BindingResult result,Model model){

        if(result.hasErrors()){
            System.out.println("AAAA");
            model.addAttribute( "msg","Length" );
            ModelAndView mv1=new ModelAndView( "leclog" );
            return mv1;
        }

        ModelAndView mv1=new ModelAndView( "leclog" );
        Integer lecid = user.getIdd();
        Lecture lecture = lectureRepository.findById( lecid ).get();
        user.setLecture( lecture );
        userRepository.save( user );
        return mv1;
    }

    @RequestMapping("/Leclog")
    public String B(Model model){
        model.addAttribute( "A","AAAAA" );
        return "LecLogin";
    }

    @RequestMapping(value = "/LLog",method = RequestMethod.POST)
    public ModelAndView valid(@RequestParam("email") String email,
                              @RequestParam("password") String password,Model model) {

        System.out.println(email);
        System.out.println(password);

        model.addAttribute( "loginError", "Error logged in" );
        ModelAndView mv1 = new ModelAndView( "redirect:/Leclog" );
        List<Lecture> lec = lectureRepository.findAll();

        for(Lecture lec1 : lec) {


                if (email.equals( lec1.getEmail() ) && password.equals( lec1.getPassword() )) {
                    Lecture l1 = lectureRepository.findByEmail( email );
                    int id = l1.getLectureId();
                     ModelAndView mv = new ModelAndView( "redirect:/form/" + id );
                    System.out.println(l1.toString());
                    return mv;

                }else {
                    model.addAttribute( "loginError", "Error logged in" );
                    ModelAndView mv = new ModelAndView( "Login" );
                    return mv;
                }
        }
        return mv1;
    }
//
//    @RequestMapping(value = "/savv", method = RequestMethod.POST)
//    public ModelAndView dose(@Valid @ModelAttribute("user") User user, BindingResult result,Model model){
//        ModelAndView mv1=new ModelAndView( "redirect:/LecturerDetails" );
//
//        Integer id = user.getId();
//        User user1 = userRepository.findById( id ).get();
//        user1.setLecture( user );
//        userRepository.save( user );
//        System.out.println();
//        return mv1;
//    }

//    @RequestMapping(value = "/savvv", method = RequestMethod.POST)
//    public ModelAndView dose(@RequestParam("Id") String Id,
//                             @RequestParam("decision") String decision, @RequestParam("idd") Integer Idd,
//                             @RequestParam("userId") String userId, @RequestParam("reason") String reason,
//                             @RequestParam("type") String type, @RequestParam("dateTo") Date dateTo,
//                             @RequestParam("dateFrom") Date dateFrom,@RequestParam("applyDate") Date applyDate){
//        ModelAndView mv1=new ModelAndView( "redirect:/LecturerDetails" );
//        User user;
//        if(!Id.isEmpty()){
//            user=(User) userRepository.findById( Integer.parseInt( Id )).get();
//            System.out.println(decision);
//        }else{
//            user=new User(  );
//        }
//        user.setDecision( decision );
//        user.setIdd( Idd );
//        user.setUserId( userId );
//        user.setReason( reason );
//        user.setType( type );
//        user.setDateTo( dateTo );
//        user.setDateFrom( dateFrom );
//        user.setApplyDate( applyDate );
//
//       userRepository.save( user );
//
//
//        return mv1;
//    }
@RequestMapping(value = "/savv", method = RequestMethod.POST)
public ModelAndView dose(@RequestParam("Id") String Id, @RequestParam("decision") String decision){
    ModelAndView mv1=new ModelAndView( "redirect:/leave" );
    System.out.println("fuckk 2222");
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

        userRepository.save( user2 );
        return mv1;
    }


}
