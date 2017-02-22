package mx.com.lacteosmarber.generics.keys;

import mx.com.lacteosmarber.utils.properties.ReadPropertiesFile;

/**
 * Clase que contendra las constantes de mensajes del sistema
 * @author Ing. Gabriel J. Hurtado Díaz
 */
public class Key {
    
    public static final String TIME_OUT = ReadPropertiesFile.newInstance().getMESSAGE_FILE().getProperty("out_time_exception");
    public static final String EXCEPTION_VIEW = ReadPropertiesFile.newInstance().getMESSAGE_FILE().getProperty("excepcion_view");
    public static final String EXCEPTION_VAR = ReadPropertiesFile.newInstance().getMESSAGE_FILE().getProperty("exception_var");
    public static final String REDIRECT_LOGIN = ReadPropertiesFile.newInstance().getMESSAGE_FILE().getProperty("redirect_login_view");
    //public static final String TXT_USER_NAME = ReadPropertiesFile.newInstance().getMESSAGE_FILE().getProperty("view.input.algo");
}
