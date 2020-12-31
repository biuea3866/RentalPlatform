package Controller.api;

import DTO.JsonResult;
import Service.auth.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/auth")
public class UserController {
    @Autowired
    private AuthService authService;

    @ResponseBody
    @RequestMapping("/checkEmail")
    public JsonResult checkEmail(@RequestParam(value="email", required=true, defaultValue="") String email) {
        return JsonResult.success(authService.existByEmail(email));
    }

    @ResponseBody
    @RequestMapping("/checkNickname")
    public JsonResult checkNickname(@RequestParam(value="nickName", required=true, defaultValue="") String nickName) {
        return JsonResult.success(authService.existByNickname(nickName));
    }
}
