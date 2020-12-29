package Repository.auth;

import VO.auth.UserVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AuthRepository {
    @Autowired
    private SqlSession sqlSession;
    // 유저 회원가입
    public boolean insertUser(UserVO vo) {
        return sqlSession.insert("user.insertUser", vo) == 1;
    }
    // 유저 로그인 정보
    public UserVO loginUser(UserVO vo) {
        return sqlSession.selectOne("user.loginUser", vo);
    }
    // 이메일 중복 조회
    public UserVO findByEmail(String params) {
        return sqlSession.selectOne("user.findByEmail", params);
    }
    // 닉네임 중복 조회
    public UserVO findByNickName(String params) {
        return sqlSession.selectOne("user.findByEmail", params);
    }
    // 유저 정보 수정
    public boolean update(UserVO vo) {
        return sqlSession.update("user.updateUser", vo) == 1;
    }
}
