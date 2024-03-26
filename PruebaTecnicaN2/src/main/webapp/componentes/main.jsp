
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>tuCita</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <style>

            .bg-custom-blue {
                background-color: #3fbac6;
            }


            .btn-sacar-turno {
                background-color: #3fbac6;
                height: auto;
                display: flex;
                align-items: center;
                margin-right: 20px;
            }


            .btn-sacar-turno img {
                max-height: 50px;
            }


            .btn-sacar-turno:hover {
                background-color: #3fbac6;
                color: #fff;

            }


            h1.display-4 {
                color: #0a0a0a;
                font-family: "Poppins", sans-serif;
            }
            body {
                font-family: 'Arial', sans-serif;

            }
            .card-title {
                font-weight: bold;

            }
        </style>
    </head>

    <body>

        <main>
            <div class="container mb-3 mt-3">
                <div class="row d-flex justify-content-around align-items-center">

                    <div class="col-md-6 p-3">
                        <div class="hero-section">
                            <h1 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">
                                Pide la cita en segundos, te lo ponemos fácil
                            </h1>

                            <p class="lead mb-4">Nos comprometemos a darte un servicio que no te haga perder el tiempo, fácil de usar y que te saque de apuros cuando lo necesites. ¡Aquí estamos para hacer tus trámites más llevaderos!.</p>

                            <a class="btn  btn-lg p-2 btn-sacar-turno" href="altaCiudadano.jsp" role="button">
                                <img src="assets/cita.png" alt="Icono de cita">
                                <span style="font-size: 1.25rem;">Sacar cita</span>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <img src="assets/landing1.png" alt="tuCita" class="img-fluid" style="width: 100%; height: auto;" />
                    </div>
                </div>
            </div>



            <div class="container mt-5">
                <div class="row">

                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <img src="assets/fortaleza1.png" class="card-img-top" alt="Fortaleza 1">
                            <div class="card-body">
                                <h5 class="card-title">Ingrese sus datos</h5>
                                <p class="card-text">Rellene su nombre,apellido, Dni y telefono</p>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <img src="assets/fortaleza2.png" class="card-img-top" alt="Fortaleza 2">
                            <div class="card-body">
                                <h5 class="card-title">Programa una cita</h5>
                                <p class="card-text">Seleccione en el calendario la fecha disponible para realizar el trámite.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <img src="assets/fortaleza3.png" class="card-img-top" alt="Fortaleza 3">
                            <div class="card-body">
                                <h5 class="card-title">Flexibilidad</h5>
                                <p class="card-text">Posibilidad de visualizar, cancelar y cambiar el estado de la cita en cualquier momento</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container mb-3 mt-3">
                <div class="row d-flex justify-content-around align-items-center">
                    <div class="col-md-6 p-3">
                        <div class="hero-section">
                            <h1 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">
                                Filtre y revise su cita reservada
                            </h1>

                            <p class="lead mb-4">Disponemos de amplias opciones de filtrado para que encuentre y anote su cita en cada peticion.</p>

                            <a class="btn  btn-lg p-2 btn-sacar-turno" href="mostrarTurnos.jsp" role="button">
                                <img src="assets/cita.png" alt="Icono de cita">
                                <span style="font-size: 1.25rem;">Mostrar citas</span>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <img src="assets/mock1.png" alt="tuCita" class="img-fluid" style="width: 100%; height: auto;" />
                    </div>
                </div>
            </div>




            <!-- Testimonios -->

            <div class="w-full py-12 bg-gray-100 md:py-24 lg:py-32 dark:bg-gray-800">
                <div class="container grid items-center gap-4 px-4 text-center md:px-6">
                    <div class="space-y-3">
                        <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">
                            Lo que dicen de nosotros
                        </h2>
                        <p class="mx-auto max-w-2xl text-gray-500 md:text-xl/relaxed lg:text-base/relaxed xl:text-xl/relaxed dark:text-gray-400">
                            Tener a nuestros clientes contentos es nuestra prioridad y asi lo demostramos
                        </p>
                    </div>
                    <div class="grid w-full grid-cols-1 gap-4 md:grid-cols-2 lg:gap-6 xl:gap-8">
                        <div class="relative flex flex-col items-center justify-center p-4 space-y-2 border border-gray-200 rounded-xl border-gray-200 shadow-sm md:flex-row md:p-8 md:space-y-0 lg:grid lg:grid-cols-3 lg:items-center lg:gap-4 lg:p-10 bg-gray-50 dark:bg-gray-800">
                            <img src="assets/user2.jpg" alt="User" width="80" height="80" class="rounded-full" style="aspect-ratio: 80 / 80; object-fit: cover;">
                            <div class="space-y-2 text-center md:col-span-2 md:text-left lg:text-center lg:space-y-4">
                                <div class="space-y-0.5">
                                    <h3 class="text-lg font-bold">Alicia Hang</h3>
                                    <p class="text-sm text-gray-500 dark:text-gray-400">
                                        Head of Operations
                                    </p>
                                </div>
                                <p class="text-sm text-gray-500 dark:text-gray-400">
                                    "La aplicación de administración ha optimizado nuestros procesos y ha hecho que nuestro equipo sea más eficiente. La recomiendo altamente a cualquier organización que busque simplificar su flujo de trabajo."
                                </p>
                            </div>

                        </div>

                        <div class="relative flex flex-col items-center justify-center p-4 space-y-2 border border-gray-200 rounded-xl border-gray-200 shadow-sm md:flex-row md:p-8 md:space-y-0 lg:grid lg:grid-cols-3 lg:items-center lg:gap-4 lg:p-10 bg-gray-50 dark:bg-gray-800">
                            <img src="assets/user1.jpg" alt="User" width="80" height="80" class="rounded-full" style="aspect-ratio: 80 / 80; object-fit: cover;">
                            <div class="space-y-2 text-center md:col-span-2 md:text-left lg:text-center lg:space-y-4">
                                <div class="space-y-0.5">
                                    <h3 class="text-lg font-bold">Paul Mark</h3>
                                    <p class="text-sm text-gray-500 dark:text-gray-400">
                                        Jefe Logistico
                                    </p>
                                </div>
                                <p class="text-sm text-gray-500 dark:text-gray-400">
                                    "Con la aplicación de gestión de turnos, hemos simplificado la programación de citas y optimizado la asignación de recursos. Es una herramienta imprescindible para cualquier entidad gubernamental que busque mejorar la eficiencia de sus servicios."
                                </p>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

        </main>

    </body>

</html>
