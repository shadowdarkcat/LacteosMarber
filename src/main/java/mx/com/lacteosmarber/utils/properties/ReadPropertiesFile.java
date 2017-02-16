package mx.com.lacteosmarber.utils.properties;

import com.sun.org.apache.xerces.internal.util.URI;
import java.io.IOException;
import java.net.URL;
import java.util.Properties;
import mx.com.lacteosmarber.generics.LOG.LogIntegralLm;
import mx.com.lacteosmarber.generics.exception.IntegralLmException;

/**
 * Clase que lee los archivos de propiedades
 *
 * @author Ing. Gabriel J. Hurtado Díaz
 */
public class ReadPropertiesFile {

    //<editor-fold defaultstate="collapsed" desc="Variables">
    private static ReadPropertiesFile instance;
    
    //<editor-fold defaultstate="collapsed" desc="Constantes">
    private static String MESSAGE;
    private final Properties MESSAGE_FILE;
    //</editor-fold>

    //<editor-fold defaultstate="collapsed" desc="Constructores">
    private ReadPropertiesFile() {        
        MESSAGE = "Error en lectura de archivo de propiedades";
        MESSAGE_FILE = getPropertiesFromFile("/config/properties/message.properties");
    }
    //</editor-fold>

    //<editor-fold defaultstate="collapsed" desc="Funciones P&uacute;blicas">
    public static final ReadPropertiesFile newInstance(){
        if(instance == null){
            instance = new ReadPropertiesFile();
        }
        return instance;
    }
    
    private Properties getPropertiesFromFile(String pathFila) {
        Properties properties = new Properties();
        try {
            URL url = ReadPropertiesFile.class.getClassLoader().getResource(pathFila);
            if (url != null) {
                properties.load(url.openStream());
            } else {
                return null;
            }
        } catch (URI.MalformedURIException ex) {
            LogIntegralLm.errorMessage(MESSAGE, ex);
            throw new IntegralLmException(MESSAGE, ex);
        } catch (IOException ex) {
            LogIntegralLm.errorMessage(MESSAGE, ex);
            throw new IntegralLmException(MESSAGE, ex);
        }
        return properties;
    }
    //</editor-fold>
    
    
    //<editor-fold defaultstate="collapsed" desc="Accesores">    
    public Properties getMESSAGE_FILE() {
        return MESSAGE_FILE;
    }
    //</editor-fold>
}
