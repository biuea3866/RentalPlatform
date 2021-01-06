package Controller.post;

import Security.Auth;
import Service.post.PostService;
import VO.post.PostVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/posts")
public class PostController {
    @Autowired
    private PostService postService;

    @RequestMapping(value="/", method= RequestMethod.GET)
    public String postPage() {
        return "post/post";
    }

    @Auth
    @RequestMapping(value="/postWrite", method=RequestMethod.GET)
    public String postWrite() {
        return "post/postWrite";
    }

    @RequestMapping(value="/postWrite", method=RequestMethod.POST)
    public String postWrite(
        PostVO postVO,
        @RequestParam("uploadImage1") MultipartFile image1,
        @RequestParam("uploadImage2") MultipartFile image2,
        @RequestParam("uploadImage3") MultipartFile image3,
        HttpServletRequest request
    ) {
        postService.writePost(postVO, image1, image2, image3, request);

        return "redirect:/post/post";
    }
}
