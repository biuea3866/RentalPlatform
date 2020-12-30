package Controller.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/posts")
public class PostController {
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String postPage() {
        return "post/post";
    }

    @RequestMapping(value="/postWrite", method=RequestMethod.GET)
    public String postWrite() {
        return "post/postWrite";
    }
}
