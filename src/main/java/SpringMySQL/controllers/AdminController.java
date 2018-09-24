package SpringMySQL.controllers;

import SpringMySQL.models.Admin;
import SpringMySQL.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private LectureController lectureController;

    @RequestMapping("/Adminlog")
    public String A(){
        return "Login";
    }

    @RequestMapping(value = "/ALog",method = RequestMethod.POST)
    public ModelAndView valid(@RequestParam("email") String email,
                              @RequestParam("password") String password) {


        ModelAndView mv = new ModelAndView( "Adminlog" );
        List<Admin> admin2 = adminRepository.findAll();
        System.out.println( admin2 );
        for (Admin admin1 : admin2) {
            System.out.println( admin1.toString() );
            System.out.println(admin1.getPassword());
            System.out.println(admin1.getEmail());

            System.out.println(email);
            System.out.println(password);



            if(email.equals( admin1.getEmail() ) && password.equals( admin1.getPassword() )){
                ModelAndView mv1=new ModelAndView( "redirect:/LecturerDetails" );
                return mv1;
            }else {
                System.out.println(email);
                System.out.println(password);
                ModelAndView mv1 = new ModelAndView( "redirect:/Adminlog" );
                return mv1;
            }
        }



        return mv;
    }


//        ModelAndView mv=new ModelAndView( "Login" );
//        Admin ad=new Admin();
//        String e=admin.getEmail();
//        String p=admin.getPassword();
//
//        System.out.println(e);
//        System.out.println(p);
//
//        if(email.equals( "pubudu@gmail.com" ) && password.equals( "12345" )){
//            ModelAndView mv1=new ModelAndView( "home" );
//            return mv1;
//        }else {
//            System.out.println(email);
//            System.out.println(password);
//            ModelAndView mv1 = new ModelAndView( "Login" );
//            return mv1;
//        }


    }

