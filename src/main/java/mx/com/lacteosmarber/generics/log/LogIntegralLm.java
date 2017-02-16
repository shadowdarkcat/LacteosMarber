package mx.com.lacteosmarber.generics.LOG;

import org.apache.log4j.Logger;


/**
 * Clase encargada enviar los mensajes generados por el sistema a su archivo LOG
 *
 * @author Ing. Gabriel J. Hurtado Díaz
 */
public class LogIntegralLm {

    //<editor-fold defaultstate="collapsed" desc="Constantes">
    private static final Logger LOG = Logger.getLogger(LogIntegralLm.class);
    //</editor-fold>

    //<editor-fold defaultstate="collapsed" desc="Metodos P&uacute;blicos">
    /**
     * Mensaje de tipo DEBUG
     *
     * @param message String
     * @param ex Exception
     */
    public static void debugMessage(String message, Exception ex) {
        LOG.debug(message, ex);
    }

    /**
     * Mensaje de tipo WARNING
     *
     * @param message String
     */
    public static void warnMessage(String message) {
        LOG.warn(message);
    }

    /**
     * Mensaje de tipo ERROR
     *
     * @param message String
     * @param ex Exception
     */
    public static void errorMessage(String message, Exception ex) {
        LOG.error(message, ex);
    }

    /**
     * Mensaje de tipo ERROR
     *
     * @param message String
     */
    public static void errorMessage(String message) {
        LOG.error(message);
    }

    /**
     * Mensaje de tipo ERROR
     *
     * @param message String
     * @param ex Throwable
     */
    public static void errorMessage(String message, Throwable ex) {
        LOG.error(message, ex);
    }

    /**
     * Mensaje de tipo INFO
     *
     * @param message String
     */
    public static void infoMessage(String message) {
        LOG.info(message);
    }
    //</editor-fold>
}
