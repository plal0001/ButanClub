<%-- any content can be specified here e.g.: --%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="centrar-contenido"><h1>Proximos conciertos</h1></div>
<div class="row justify-content-center">

    <c:forEach var="co" items="${listadoProximosConciertos}">
        <div class=" concierto col-md-4" >
            <div class="">
                <img src="imagenes/conciertos/${co.imagen}" width="100%">
            </div>
            <div class=" centrar-contenido info-concierto">
                <div>

                    <h3><p>${co.nombre}</p></h3>
                    <p>${co.artista}</p>
                    <br>
                    Precio: ${co.precio}€
                    <br>
                    Día: ${co.fecha}  <br>  Hora:${co.hora}
                    <br>
                    <form action="/ButanClub/main/conciertos/comprarEntrada" method="post">
                        <input type="text" name="idconcierto" hidden value="${co.id}">
                        <input class="btn btn-primary" type="submit" name="compra" value="Comprar Entrada">
                    </form>

                </div>
            </div>
        </div>
    </c:forEach>

</div>