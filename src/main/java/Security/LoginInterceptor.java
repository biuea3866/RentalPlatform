package Security;

import Service.auth.AuthService;
import VO.auth.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor extends HandlerInterceptorAdapter {
    @Autowired
    private AuthService authService;

    @Override
    public boolean preHandle(
        HttpServletRequest request,
        HttpServletResponse response,
        Object handler
    ) throws Exception {
        UserVO vo = new UserVO();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        vo.setEmail(email);
        vo.setPassword(password);

        UserVO authUser = authService.login(vo);

        if(authUser == null) {
            request.setAttribute("result", "fail");
            request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp")
                   .forward(request, response);

            return false;
        }

        // Tackle to session
        HttpSession session = request.getSession(true);

        session.setAttribute("authUser", authUser);

        response.sendRedirect(request.getContextPath() + "/");

        return false;
    }
}
