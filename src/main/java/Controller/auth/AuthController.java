package Controller.auth;

import Security.Auth;
import Security.AuthUser;
import Service.auth.AuthService;
import VO.auth.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/auth")
public class AuthController {
    @Autowired
    AuthService authService;

    @Auth
    @RequestMapping(value="/myPage", method=RequestMethod.GET)
    public String myPage(
        @AuthUser UserVO authUser,
        Model model
    ) {
        model.addAttribute("UserVO", authService.getUser(authUser.getEmail()));

        return "auth/myPage";
    }

    @RequestMapping(value="/login", method=RequestMethod.GET)
    public String loginPage() {
        return "auth/login";
    }

    @RequestMapping(value="/join", method=RequestMethod.GET)
    public String joinPage() {
        return "auth/join";
    }

    @RequestMapping(value="/join", method=RequestMethod.POST)
    public String joinsuccess(UserVO vo) {
        authService.join(vo);

        return "redirect:/auth/joinsuccess";
    }

    @RequestMapping(value="/joinsuccess", method=RequestMethod.GET)
    public String joinsuccess() {
        return "auth/joinsuccess";
    }
}
