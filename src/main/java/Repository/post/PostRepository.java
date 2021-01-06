package Repository.post;

import VO.post.PostVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PostRepository {
    @Autowired
    private SqlSession sqlSession;

    public void writePost(PostVO vo) {
        sqlSession.insert("post.writePost", vo);
    }
}
