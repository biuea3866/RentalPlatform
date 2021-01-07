package Service.post;

import Lib.ImageUploader;
import Repository.post.PostRepository;
import VO.post.PostVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

@Service
public class PostService {
    @Autowired
    private PostRepository postRepository;

    public void writePost(
        PostVO vo,
        MultipartFile image1,
        MultipartFile image2,
        MultipartFile image3
    ) {
        ImageUploader uploader = new ImageUploader();

        vo.setImage1(uploader.ImageUploader(image1));
        vo.setImage2(uploader.ImageUploader(image2));
        vo.setImage3(uploader.ImageUploader(image3));

        postRepository.writePost(vo);
    }
}
