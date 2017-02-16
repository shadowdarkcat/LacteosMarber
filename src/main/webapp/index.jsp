<%-- 
    Document   : index
    Created on : 2/02/2017, 02:38:31 PM
    Author     : Ing. Gabriel J. Hurtado Díaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceso Sistema Integral</title>
        <jsp:include page="web/decorator/decorator.jsp" />        
    </head>
    <body class="fondo">
        <div class="container-fluid">
            <form id="frmLogin" name="frmLogin" class="form-signin" method="post" action="${pageContext.request.contextPath}/vistas/principal.jsp" >
                <div class="cuadrado" style="width: 360px; height: 460px;">                        
                    <div class="row ">
                        <div class="col-xs-12">
                            <center><img class="img-responsive" src="${pageContext.request.contextPath}/web/img/logo.png" />
                                <br/>                                
                                <table class="table-responsive" style="width: 320px;">
                                    <tr>
                                        <td>
                                            <label for="txtUser" class="sr-only">Nombre Usuario</label>
                                            <input type="text" id="txtUser" name="txtUser" class="form-control  input-sm borders" 
                                                   placeholder="Nombre Usuario " required = "required" autofocus="autofocus"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="txtPassword" class="sr-only">Contrase&ntilde;a :</label>
                                            <input type="password" id="txtPassword" name="txtPassword" class="form-control  input-sm borders"
                                                   placeholder="Password" required="required"/>
                                        </td>
                                    </tr>                                    
                                </table>
                                <br>
                                <script type="text/javascript" src="http://api.recaptcha.net/challenge?k=6LeV-d4SAAAAAKAivflo8oUZmr4l1m4grburP_0t"></script>
                                <div id="recaptcha_container">
                                    <div align="center" style="margin: 10px 0px">
                                        <div id="recaptcha_image"></div>
                                    </div>
                                </div>
                                <button class="btn btn-primary btn-block" style=" width: 320px;" type="submit">Acceder</button>
                            </center>
                            <br/>
                        </div>                                
                    </div>
                </div>
            </form>
        </div>
        <script type="text/javascript" src="${pageContext.request.contextPath}/web/jquery/bootstrap/ie10-viewport-bug-workaround.js"></script>        
    </body>
</html>
