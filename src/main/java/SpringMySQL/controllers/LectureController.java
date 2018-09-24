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
public class LectureController {

    @Autowired
    private LectureRepository lectureRepository;

    @Autowired
    private UserRepository userRepository;

    @RequestMapping("/l/{Id}")
    public Iterable<User> list() {
        return userRepository.findAll();

    }

    @RequestMapping("/")
    public String home(){
        return "home";
    }


    @RequestMapping("/LecturerDetails")
    public ModelAndView doHome() {

        ModelAndView mv = new ModelAndView( "index" );
        List<Lecture> users = (List<Lecture>) lectureRepository.findAll();
        System.out.println( users );
        for (Lecture user : users) {
            System.out.println( user.toString() );
        }
        return mv.addObject( "lectureList", users );
    }

    @RequestMapping("/Lec")
    public ModelAndView d() {

        ModelAndView mv = new ModelAndView( "A" );
        List<User> users1 = (List<User>) userRepository.findAll();
//        for (User user1 : users1) {
//            System.out.println( user1.toString() );
//        }
        return mv.addObject( "lectureList", users1 );
    }


    @RequestMapping(value = "/delete/{lectureId}",method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("lectureId") int lectureId){
    ModelAndView mv=new ModelAndView( "redirect:/LecturerDetails" );
    lectureRepository.deleteById( lectureId );
    return mv;
    }


    @RequestMapping(value = "/edit/{lectureId}", method = RequestMethod.GET)
    public ModelAndView doview(@PathVariable("lectureId") int lectureId){
        ModelAndView mv=new ModelAndView( "edit" );
        mv.addObject( "lists",lectureRepository.findById( lectureId).get());
        return mv;
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ModelAndView dologin(){
        ModelAndView mv=new ModelAndView( "LecturerLogin" );

        return mv;
    }


    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public ModelAndView dosave(@RequestParam("lectureId") String lectureId,@RequestParam("lecId") String lecId,@RequestParam("lectureName") String lectureName,
                               @RequestParam("designation") String designation,@RequestParam("department") String department,
                               @RequestParam("email") String email,@RequestParam("radio") String gender, @RequestParam("phoneNo") int phoneNo
            ,@RequestParam("password") String password){
        ModelAndView mv=new ModelAndView( "redirect:/LecturerDetails" );
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

    @RequestMapping(value = "/savee",method = RequestMethod.POST)
    public ModelAndView dosave(@RequestParam("lectureId") String lectureId,@RequestParam("lectureName") String lectureName,
                               @RequestParam("designation") String designation,@RequestParam("department") String department,
                               @RequestParam("email") String email, @RequestParam("phoneNo") int phoneNo,@RequestParam("radio") String gender){
        ModelAndView mv=new ModelAndView( "redirect:/LecturerDetails" );
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







//    @GetMapping("/helloWorld")
//    String getView(Model model) {
//        model.addAttribute("msg", "Hello there, This message has been injected from the controller method");
//        return "index";
//    }


//    @GetMapping("/savee")
//    @ResponseBody
//    public String save(){
//        Lecture x=new Lecture( "P. L. M. Weerasinghe","Senior Lecture",
//                "CIS","pubudu@gmail.com","Male",1234567,"ABC123");
//
//        lectureRepository.save( x );
//
//        return "Book";
//    }
//    @PostMapping("/sav")
//    public String save(Lecture c){
//        lectureRepository.save( c );
//        return "index";
//    }



//    @GetMapping("/enroll")
//    public ModelAndView newReg(ModelMap model) {
//        ModelAndView mv = new ModelAndView( "enroll" );
//        Lecture lecture = new Lecture();
//        mv.addObject( "lecture",lecture );
//        return mv;
//    }
//
//    @PostMapping("/savee")
//    public String saveReg(@Valid Lecture lecture,
//                          BindingResult result, ModelMap model, RedirectAttributes redirectAttributes){
//        System.out.println("save controler");
//        System.out.println(lecture.toString());
//
//        if (result.hasErrors()){
//            return "add";
//        }
//        lectureRepository.save( lecture );
//
//        return "redirect:/LectureDetails";
//
//    }
//    // Update exisisting value
//    @PostMapping("/update")
//    public String updateReg(@Valid Lecture lecture,
//                          BindingResult result, ModelMap model, RedirectAttributes redirectAttributes){
//        System.out.println("2222222222save controler");
//        System.out.println(lecture.toString());
//
//        lecture.getLectureId();
//        if (result.hasErrors()){
//            return "enroll";
//        }
//        //lectureRepository.getOne( lecture.getLectureId() );
//        Lecture lecture1 = lectureRepository.findById( lecture.getLectureId() ).get();
//        lecture1 = lecture;
//        lectureRepository.save( lecture1 );
//        return "redirect:/LectureDetails";
//
//    }


//    @RequestMapping("/add")
//    public ModelAndView add(){
//        ModelAndView mv = new ModelAndView( "add" );
//        Lecture lec = new Lecture(  );
//        mv.addObject( "lecture",lec );
//        return mv;
//    }



//    @RequestMapping(value = "edit/{lectureId}",method = RequestMethod.GET)
//    public ModelAndView edit(@PathVariable("lectureId") int lectureId){
//        ModelAndView mv=new ModelAndView( "edit" );
//        mv.addObject( "lists",lectureRepository.findById( lectureId).get());
//        return mv;
//    }


}
