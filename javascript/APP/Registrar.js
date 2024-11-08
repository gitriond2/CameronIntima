

$(#imagen).change(function (){
    let imagen = this.file[0];
    if (imagen["type"] != "image/jpg" || imagen["type"] != "image/png") {
        $("imagen").val("");

        alert("debe subir una imagen en formato jpg o png");
    } else if (imagen["size"] > 2000000) {
        $("imagen").val("");

        alert("la imagen debe tener como maximo 2mb");
    } else {
        var datosImagen = new FileReader;
        datosImagen.readAsDataURL(imagen);

        $(datosImagen).on("load", function (event) {
            var rutaImagen = event.target.result;

        })
    }
   
})
/*$(".previsualizar").attr("src","../content/imagen.png o jpg"); va despues de $imagen podes cargarle una imagen de previsualizacion y mostrarsela.

$(".previsualizar").attr("src", rutaImagen);      parte datos imagen previzualizar igual */



$("#BtnGuardar").on("click", function () {
    if (true) {

        let slfile = ($("imagen"))[0].file[0];
        let params = new Object();
        params.append("file", slfile);
/*        params = PostImg("", params).done(function (datos) {

        })*/
    }
})




















