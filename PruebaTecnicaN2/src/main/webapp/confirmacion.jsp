<!DOCTYPE html>
<html lang="es">
    <head>
        <%@include file="componentes/head.jsp"%>
        <title>Confirmación de Registro</title>
        <style>

            .hero-section {
                text-align: center;
                padding: 20px;
            }

            .hero-section img {
                margin-bottom: 20px;
            }

            .hero-section .btn {
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <%@include file="componentes/header.jsp"%>

        <div class="container mb-3 mt-3">
            <div class="row d-flex justify-content-around align-items-center">
                <!-- Columna 1: Hero Section -->
                <div class="col-md-6 p-3">
                    <div class="hero-section">
                        <h1 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">
                            Registro conseguido con éxito
                        </h1>
                        <p class="lead mb-4">Si quiere seguir tramitando procesos pulse el botón para volver a la página principal.</p>
                        <!-- Imagen -->
                        <img src="assets/confirmation.jpg" alt="Icono de cita">
                        <!-- Botón para volver al inicio -->
                        <a href="index.jsp" class="btn btn-primary" style="background-color: #3fbac6;">Volver al Inicio</a>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="componentes/footer.jsp"%>
    </body>
</html>
