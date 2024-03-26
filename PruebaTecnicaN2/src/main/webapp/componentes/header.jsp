<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Navbar</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">

        <style>

            .bg-custom-blue {
                background-color: #3fbac6;
            }
            body {
                font-family: "Poppins", sans-serif;
            }
        </style>
    </head>

    <body>

        <header>

            <nav class="navbar sticky top-0 bg-custom-blue">
                <div class="container mx-auto flex justify-between items-center py-">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="assets/logo3.png" alt="RapidBookings" style="max-height: 40px; max-width: 200px;">
                    </a>

                    <ul class="flex items-center space-x-4">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="altaCiudadano.jsp">Pedir Citas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="mostrarTurnos.jsp">Mostrar Citas</a>
                        </li>

                    </ul>
                </div>
            </nav>
        </header>

    </body>

</html>