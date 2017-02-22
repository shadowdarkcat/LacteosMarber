$(document).ready(function () {
    loadMap();
});
//mapCaEcatepec

loadMap = function () {

    var mapOptions = {
        zoom: 18
        , mapTypeId: window.google.maps.MapTypeId.MAP
        , center: new google.maps.LatLng(19.6171298, -99.0030606)
    };
    var map = new google.maps.Map(document.getElementById("mapCaEcatepec"), mapOptions);
    infowindow = new google.maps.InfoWindow();
    var data = '<img src="' + contextoGlobal + '/web/img/icons/logo.ico' + '">'
            + '<br/><strong>Sucursal</strong>: A - 161'
            + '<br/><strong>Telefonos</strong>: 55-55-55-55'
            + '<br/><strong>Sucursal</strong>: B - 245'
            + '<br/><strong>Telefonos:</strong>'
            + '<br/><strong>Sucursal</strong>: B - 248'
            + '<br/><strong>Telefonos:</strong>'
            + '<br/><strong>Sucursal</strong>: C - 9'
            + '<br/><strong>Telefonos:</strong>'
            + '<br/><strong>Sucursal</strong>: C - 325'
            + '<br/><strong>Telefonos:</strong>'
            + '<br/><strong>Sucursal</strong>: D - 413'
            + '<br/><strong>Telefonos:</strong>'
            + '<br/><strong>Sucursal</strong>: D - 2'
            + '<br/><strong>Telefonos:</strong>'
            + '<br/><strong>Sucursal</strong>: Mercado'
            + '<br/><strong>Telefonos:</strong>'
            + '<br/><strong>Sucursal</strong>: H - 6'
            + '<br/><strong>Telefonos:</strong>';
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(19.6171298, -99.0030606)
        , icon: contextoGlobal + '/web/img/icons/logo.ico'
        , map: map
        , animation: google.maps.Animation.BOUNCE
    });
    infowindow.setContent(data);
    google.maps.event.addListener(marker, "mouseover", function () {
        infowindow.setContent(data);
        infowindow.open(map, this);
    });
    google.maps.event.addListener(marker, 'click', function () {
        infowindow.setContent(arr[0]);
        infowindow.open(map, this);
    });
    resizeMap();
    mapTultitlan();
    mapCuatitlan();
    mapChicoloapan();
};

function mapTultitlan(){
    var mapOptions = {
        zoom: 18
        , mapTypeId: window.google.maps.MapTypeId.MAP
        , center: new google.maps.LatLng(19.6395617,-99.139355)
    };
    var map = new google.maps.Map(document.getElementById("mapCaTultitlan"), mapOptions);
    infowindow = new google.maps.InfoWindow();
    var data = '<img src="' + contextoGlobal + '/web/img/icons/logo.ico' + '">'
            + '<br/><strong>Sucursal</strong>: Tulti - xxxxxx'
            + '<br/><strong>Telefonos</strong>: 55-55-55-55';
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(19.6395617,-99.139355)
        , icon: contextoGlobal + '/web/img/icons/logo.ico'
        , map: map
        , animation: google.maps.Animation.BOUNCE
    });
    infowindow.setContent(data);
    google.maps.event.addListener(marker, "mouseover", function () {
        infowindow.setContent(data);
        infowindow.open(map, this);
    });
    google.maps.event.addListener(marker, 'click', function () {
        infowindow.setContent(arr[0]);
        infowindow.open(map, this);
    });
    resizeMap();
}

function mapCuatitlan(){    
     var mapOptions = {
        zoom: 18
        , mapTypeId: window.google.maps.MapTypeId.MAP
        , center: new google.maps.LatLng(19.6949633,-99.204537)
    };
    var map = new google.maps.Map(document.getElementById("mapCuatiCedis"), mapOptions);
    infowindow = new google.maps.InfoWindow();
    var data = '<img src="' + contextoGlobal + '/web/img/icons/logo.ico' + '">'
            + '<br/><strong>Sucursal</strong>: Cedis Cuautitlan'
            + '<br/><strong>Telefonos</strong>: 55-55-55-55';
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(19.6949633,-99.204537)
        , icon: contextoGlobal + '/web/img/icons/logo.ico'
        , map: map
        , animation: google.maps.Animation.BOUNCE
    });
    infowindow.setContent(data);
    google.maps.event.addListener(marker, "mouseover", function () {
        infowindow.setContent(data);
        infowindow.open(map, this);
    });
    google.maps.event.addListener(marker, 'click', function () {
        infowindow.setContent(arr[0]);
        infowindow.open(map, this);
    });
    resizeMap();
}

function mapChicoloapan(){    
     var mapOptions = {
        zoom: 18
        , mapTypeId: window.google.maps.MapTypeId.MAP
        , center: new google.maps.LatLng(19.6949633,-99.204537)
    };
    var map = new google.maps.Map(document.getElementById("mapCuatiCedis"), mapOptions);
    infowindow = new google.maps.InfoWindow();
    var data = '<img src="' + contextoGlobal + '/web/img/icons/logo.ico' + '">'
            + '<br/><strong>Sucursal</strong>: Cedis Cuautitlan'
            + '<br/><strong>Telefonos</strong>: 55-55-55-55';
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(19.6949633,-99.204537)
        , icon: contextoGlobal + '/web/img/icons/logo.ico'
        , map: map
        , animation: google.maps.Animation.BOUNCE
    });
    infowindow.setContent(data);
    google.maps.event.addListener(marker, "mouseover", function () {
        infowindow.setContent(data);
        infowindow.open(map, this);
    });
    google.maps.event.addListener(marker, 'click', function () {
        infowindow.setContent(arr[0]);
        infowindow.open(map, this);
    });
    resizeMap();
}

function resizeMap() {
    if (typeof map == "undefined")
        return;
    setTimeout(function () {
        resizingMap();
    }, 300);
}

function resizingMap() {
    if (typeof map == "undefined")
        return;
    google.maps.event.trigger(map, "resize");
}