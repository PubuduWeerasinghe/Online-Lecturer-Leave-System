package SpringMySQL.controllers;

import SpringMySQL.models.Lecture;
import SpringMySQL.repository.LectureRepository;
import SpringMySQL.repository.UserRepository;
import com.twilio.Twilio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
@RequestMapping("/twillio")
public class TwillioController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private LectureRepository lectureRepository;

    private final static String ACCOUNT_SID = "AC8154b2a1be30b23f079e444fa69e6772";
    private final static String AUTH_TOKEN = "228c21a0677e8700256adeaade80c255";

    @RequestMapping(value = "/send")
    public ModelAndView save(){

        ModelAndView mv=new ModelAndView( "responsee" );
         Lecture lecture = lectureRepository.findById( 67 ).get();
         Integer telephone = lecture.getPhoneNo();
        System.out.println(telephone);
        String tele = "+94" + telephone;
        System.out.println(tele);
//string number = "+94" +
        Twilio.init(ACCOUNT_SID,AUTH_TOKEN);
        Message message = Message.creator(new PhoneNumber(tele),new PhoneNumber( "+447447072945" ) ,"  hello welcome" ).create(  );
        System.out.println(message);
        return mv;
    }

    @RequestMapping(value = "/sav/{Id}",method = RequestMethod.GET)
    public ModelAndView save(@PathVariable("Id") Integer Id){

        Lecture le=new Lecture(  );

        ModelAndView mv=new ModelAndView( "responsee" );

        System.out.println(le.getPhoneNo());

        mv.addObject( "list",userRepository.findById( Id).get());
        return mv;
    }
}
