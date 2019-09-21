package SpringMySQL.controllers;

import SpringMySQL.models.Admin;
import SpringMySQL.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private LectureController lectureController;


    //Admin Login Page
    @RequestMapping("/Adminlog")
    public String A() {
        return "Login";
    }

    //Admin Login Validation
    @RequestMapping(value = "/ALog",method = RequestMethod.POST)
    public ModelAndView valid(@Valid @RequestParam("email") String email,
                              @RequestParam("password") String password, Model model) {

        ModelAndView mv = new ModelAndView( "redirect:/Adminlog" );
        List<Admin> admin2 = adminRepository.findAll();
        System.out.println( admin2 );
        for (Admin admin1 : admin2) {

            if(email.equals( admin1.getEmail() ) && password.equals( admin1.getPassword() )){
                ModelAndView mv1=new ModelAndView( "redirect:/Lecturerdetails" );
//                a=true;
//                System.out.println(a);
                return mv1;

            }else {

                model.addAttribute( "loginError","Error logged in" );
                ModelAndView mv1 = new ModelAndView( "Login" );
//                a=false;
//                System.out.println(model);
                return mv1;
            }

        }

        return mv;
    }

    //Logout
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.removeAttribute( "loggedInUser" );
        return "home2";
    }


    }

