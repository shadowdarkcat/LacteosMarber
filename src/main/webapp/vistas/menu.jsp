<%-- 
    Document   : menu
    Created on : 2/02/2017, 03:12:48 PM
    Author     : Ing. Gabriel J. Hurtado Díaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../web/decorator/decorator.jsp" />
        <title>Menu</title>
    </head>
    <body>
        <nav class="navbar navbar-nav navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" 
                            data-toggle="collapse" 
                            data-target="#navbar" 
                            aria-expanded="false" 
                            aria-controls="navbar">
                        <!--<label class="labels">Video Club</label>
                        <img src="/Games/web/images/logo.png" class="img-responsive"
                             height="121" width="55"> -->
                    </button>
                    <div class="hidden-xs div-position">
                        <a class="navbar-brand" href="/Games/">
                           <!-- <label class="labels">Video Club</label>
                            <img src="/Games/web/images/logo.png" class="img-responsive"
                                 height="252" width="110" >                         -->
                        </a>
                    </div>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">                        
                        <li><a href="/Games/com/home/controladores/ProductoController.php?method=4">Productos</a></li>
                        <li><a href="/Games/vistas/ubicacion.php">Ubicacion</a></li>
                        <li><a href="/Games/vistas/nuevoRegistro.php">Registrate</a></li>
                        <li><a href="/Games/vistas/login.php">Login</a></li>
                        <li><a href="/Games/vistas/acerca.php">Acerca de</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
