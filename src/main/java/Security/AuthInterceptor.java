package Security;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(
        HttpServletRequest request,
        HttpServletResponse response,
        Object handler
    ) throws Exception {
        // 1. Confirm what handles
        if(handler instanceof HandlerMethod == false) {
            return true;
        }

        // 2. Casting
        HandlerMethod handlerMethod = (HandlerMethod) handler;

        // 3. Receive @Auth of Handler Method
        Auth auth = handlerMethod.getMethodAnnotation(Auth.class);

        // 4. Case which @Auth is not authenticated
        if(auth == null) {
            return true;
        }

        // 5. Since there is @Auth, complete authenticated
        HttpSession session = request.getSession();

        if(session == null) {
            response.sendRedirect(request.getContextPath() + "/auth/login");

            return false;
        }

        Object authUser = session.getAttribute("authUser");

        if(authUser == null) {
            response.sendRedirect(request.getContextPath() + "/auth/login");

            return false;
        }

        // 6. @Auth annotation is existed and authenticated
        return true;
    }
}
