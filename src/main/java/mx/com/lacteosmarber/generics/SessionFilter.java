package mx.com.lacteosmarber.generics;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import mx.com.lacteosmarber.generics.exception.IntegralLmException;
import mx.com.lacteosmarber.generics.keys.Key;
import mx.com.lacteosmarber.user.bean.usuario.UserBean;

/**
 *
 * @author Ing. Gabriel J. Hurtado Díaz
 */
public class SessionFilter implements Filter {

    private FilterConfig filterConfig = null;

    public SessionFilter() {
    }

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        RequestDispatcher dispatcher;

        try {
            HttpSession session = ((HttpServletRequest) request).getSession(false);
            if (session == null) {
                throw new IntegralLmException(Key.TIME_OUT);
            } else {
                UserBean user = (UserBean) session.getAttribute("usuarioLogin");
                if (user == null) {
                    throw new IntegralLmException(Key.TIME_OUT);
                } else {
                    user = null;
                }
            }
            chain.doFilter(request, response);
        } catch (IOException | ServletException ex) {
            dispatcher = filterConfig.getServletContext().getRequestDispatcher(Key.EXCEPTION_VIEW);
            request.setAttribute(Key.EXCEPTION_VAR, ex);
            dispatcher.forward(request, response);
        } catch (IntegralLmException ex) {
            dispatcher = filterConfig.getServletContext().getRequestDispatcher(Key.REDIRECT_LOGIN);
            request.setAttribute("ex", ex);
            dispatcher.forward(request, response);
        }
    }

    /**
     * Return the filter configuration object for this filter.
     * @return 
     */
    public FilterConfig getFilterConfig() {
        return (this.filterConfig);
    }

    /**
     * Set the filter configuration object for this filter.
     *
     * @param filterConfig The filter configuration object
     */
    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {
    }

    /**
     * Init method for this filter
     * @param filterConfig
     */
    @Override
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;      
    }

    /**
     * Return a String representation of this object.
     */
    @Override
    public String toString() {
        if (filterConfig == null) {
            return ("SessionFilter()");
        }
        StringBuffer sb = new StringBuffer("SessionFilter(");
        sb.append(filterConfig);
        sb.append(")");
        return (sb.toString());

    }
}
