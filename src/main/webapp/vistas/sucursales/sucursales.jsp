<%-- 
    Document   : sucursales
    Created on : 20/02/2017, 03:36:14 PM
    Author     : Ing. Gabriel J. Hurtado Díaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../menu/menu.jsp" />        
             
        <title>Direcotorio Sucursales</title>
    </head>
    <body>
        <br/><br/><br/><br/>
        <div class="container">
            <div class="container-fluid">
                <div class="row">
                    <div class="content row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <center><label class="text-muted h1 center-block">Sucursales</label></center>
                        </div>                   
                        <div class="col-xs-12 col-sm-12 col-md-12">                            
                            <center><label class="text-muted h2">Central Abasto Ecatepec</label></center><br>
                            <table class="table table-responsive table-hover">
                                <tbody> 
                                    <tr>
                                        <td colspan="2">
                                            <div id="mapCaEcatepec"></div>
                                        </td>
                                    </tr>
                                    <tr>                                       
                                        <td>
                                            <label class="text-muted h3">A - 161</label><br/>
                                            Central de Abasto Nave A local 161, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060                                            
                                        </td>
                                        <td>
                                            <label class="text-muted h3">B - 245</label><br/>
                                            Central de Abasto Nave B local 245, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060   
                                        </td>                                      
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="text-muted h3">B - 248</label><br/>
                                            Central de Abasto Nave B local 248, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060                                            
                                        </td>
                                        <td>
                                            <label class="text-muted h3">C - 9</label><br/>
                                            Central de Abasto Nave C local S9, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060   
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="text-muted h3">C - 325</label><br/>
                                            Central de Abasto Nave C local 325, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060                                            
                                        </td>
                                        <td>
                                            <label class="text-muted h3">D - 413</label><br/>
                                            Central de Abasto Nave D local 413, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060   
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="text-muted h3">D - 2</label><br/>
                                            Central de Abasto Nave D local 2, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060                                            
                                        </td>
                                        <td>
                                            <label class="text-muted h3">Mercado</label><br/>
                                            Mercado de Abasto Venta de Carpio Nave D local 2 y 3, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060  
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label class="text-muted h3">H - 6</label><br/>
                                            Central de Abasto Nave H local 6, Col. Venta de Carpio, Ecatepec, Estado de México, C.P. 55060                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">                            
                            <center><label class="text-muted h2">Central Abasto Tultitlan</label></center><br>
                            <table class="table table-responsive table-hover">
                                <tbody> 
                                    <tr>
                                        <td colspan="2">
                                            <div id="mapCaTultitlan"></div>
                                        </td>
                                    </tr>
                                    <tr>                                       
                                        <td>
                                             <label class="text-muted h3">Tulti - X</label><br/>
                                            Nave 1 Local 17-18, Col.Casco la Providencia, Tultitlán de Mariano Escobedo, Estado de México, C.P. 54900                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">                            
                            <center><label class="text-muted h2">Centro de Distribución Cuautitlan Izcalli</label></center><br>
                            <table class="table table-responsive table-hover">
                                <tbody> 
                                    <tr>
                                        <td colspan="2">
                                            <div id="mapCuatiCedis"></div>
                                        </td>
                                    </tr>
                                    <tr>                                       
                                        <td>
                                             <label class="text-muted h3">Cedis Cuautitlan</label><br/>                                            
                                             Carr. Querétaro - México, km 40.8, Col. Rio Tenco, Cuautitlán Izcalli, Estado de México, C.P. 54713
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/web/js/maps.js" type="text/javascript"></script>
        <script>
            google.maps.event.addDomListener(window, 'load', init());

            function init() {
                loadMap();
            }
        </script>
    </body>
</html>
