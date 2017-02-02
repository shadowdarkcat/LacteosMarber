<%-- 
    Document   : index
    Created on : 2/02/2017, 01:01:12 PM
    Author     : Ing. Gabriel J. Hurtado Díaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceso</title>
        <%@include file="${pageContext.request.contextPath}/web/decorator/decorator.jsp" %>
    </head>
    <body>
        <div class="container">
            <div class="container">
                <form id="frmLogin" name="frmLogin" class="form-signin" method="post" action="com/aestre/system/controller/loginController.php?method=0" >
                    <center><h2 class="form-signin-heading">Acceso Sistema</h2></center>
                    <label for="txtUser" class="sr-only">Nombre Usuario :</label>
                    <input type="text" id="txtUser" name="txtUser" class="form-control" placeholder="Nombre Usuario " required = "required" autofocus="autofocus"/>
                    <label for="txtPassword" class="sr-only">Contrase&ntilde;a :</label>
                    <input type="password" id="txtPassword" name="txtPassword" class="form-control" placeholder="Password" required="required"/>                                
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Acceder</button>                
                    <br/>
                    <?php
                    if (isset($_SESSION['access'])) {
                    ?>
                    <center>
                        <label class="alert-danger">Credenciales inv&aacute;lidas &oacute; Usuario Inactivo
                        </label>
                    </center>
                    <?php } ?>
                </form>
            </div>
        </div>    
    </body>
</html>
