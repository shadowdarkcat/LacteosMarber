<%-- 
    Document   : menu
    Created on : 2/02/2017, 03:12:48 PM
    Author     : Ing. Gabriel J. Hurtado Díaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../web/decorator/decorator.jsp" />
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
                        <img src="${pageContext.request.contextPath}/web/img/logo.png" class="img-responsive"
                             style="margin: -35px 0px 0px 0px;">
                    </button>
                    <div class="hidden-xs div-position">
                        <a class="navbar-brand" href="#">
                            <img src="${pageContext.request.contextPath}/web/img/logo.png" class="img-responsive"
                                 style="margin: -35px 0px 0px 0px;">
                        </a>
                    </div>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">                        
                        <li><a href="${pageContext.request.contextPath}/">Inicio</a></li>
                        <li><a href="${pageContext.request.contextPath}/vistas/nosotros/nosotros.jsp">Nosotros</a></li>
                        <li><a href="${pageContext.request.contextPath}/vistas/sucursales/sucursales.jsp">Sucursales</a></li>
                        <li><a href="#">Productos</a></li>
                        <li><a href="#">Contacto</a></li>
                        <li><a href="#">Acerca de</a></li>
                        <li>	<!--listen2myradio.com SHOUTcast Flash Player-->                            
                            <p id='preview' style="margin: 10px 0px 0px 0px;"></p><script id='myscript' language='javascript' 
                                                        src='http://flashplayer.listen2myradio.com/getInfo.js?id=20815d7ab430981120714b2a4f1bf678f8c8'>
                            </script>
                            <!--End Player-->
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
