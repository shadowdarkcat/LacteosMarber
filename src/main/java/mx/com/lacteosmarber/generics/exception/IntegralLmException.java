package mx.com.lacteosmarber.generics.exception;

/**
 * Claase encargada de registrar las excepciones generadas en el sistema
 *
 * @author Ing. Gabriel J. Hurtado Díaz
 */
public class IntegralLmException extends RuntimeException {

    //<editor-fold defaultstate="collapsed" desc="Constructores">
    /**
     * Genera una excepci&oacute;n
     */
    public IntegralLmException() {
        super();
    }

    /**
     * Genera una excepci&oacute;n con un mensaje explicando el error
     *
     * @param message String
     */
    public IntegralLmException(String message) {
        super(message);
    }

    /**
     * Genera una excepci&oacute;n con un mensaje explicando el error y la causa
     * que lo genero
     *
     * @param message String
     * @param cause Throwable
     */
    public IntegralLmException(String message, Throwable cause) {
        super(message, cause);
    }

    /**
     * Genera una excepci&oacute;n con la causa que lo genero
     *
     * @param cause
     */
    public IntegralLmException(Throwable cause) {
        super(cause);
    }
    //</editor-fold>

    //<editor-fold defaultstate="collapsed" desc="Funciones P&uacute;blicas">
    /**
     * Genera una excepci&oacute;n personalizada
     *
     * @param message String
     * @param cause String
     * @return Exception
     */
    public static Exception messageException(String message, String cause) {
        Throwable throwable = new Throwable(cause);
        Exception ex = new Exception(message, throwable);
        return ex;
    }
    //</editor-fold>
}
