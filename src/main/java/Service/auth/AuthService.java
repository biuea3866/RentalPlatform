package Service.auth;

import Repository.auth.AuthRepository;
import VO.auth.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    @Autowired
    private AuthRepository authRepository;
    // 회원가입
    public void join(UserVO vo) {
        authRepository.insertUser(vo);
    }
    // 로그인
    public UserVO login(UserVO vo) {
        return authRepository.loginUser(vo);
    }
    // 회원 정보 불러오기
    public UserVO getUser(String param) {
        return authRepository.findByEmail(param);
    }
    // 이메일 조회
    public boolean existByEmail(String param) {
        return authRepository.findByEmail(param) != null;
    }
    // 닉네임 조회
    public boolean existByNickname(String param) {
        return authRepository.findByNickName(param) != null;
    }
    // 회원 정보 수정
    public boolean updateUser(UserVO vo) {
        return authRepository.update(vo);
    }
}
