package Exception;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.StringWriter;

@ControllerAdvice
public class GlobalExceptionHandler {
    private static final Log LOG = LogFactory.getLog(GlobalExceptionHandler.class);

    @ExceptionHandler(Exception.class)
    public void handlerException(
        HttpServletRequest request,
        HttpServletResponse response,
        Exception e
    ) throws Exception {
        StringWriter errors = new StringWriter();

        e.printStackTrace(new PrintWriter(errors));
        LOG.error(errors.toString());

        request.setAttribute("exception", errors);
        request.getRequestDispatcher("/WEB-INF/views/error/exception.jsp");
    }
}
