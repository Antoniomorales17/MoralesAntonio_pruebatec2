
<!DOCTYPE html>
<html lang="es">
<head>
    <%@include file="componentes/head.jsp"%>
    <title>Error 404 - Página no encontrada</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background-color: #f3f4f6; /* Color de fondo */
            color: #374151; /* Color del texto */
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1rem;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3fbac6;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #31a4bb;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Lo sentimos</h1>
        <p>Debe rellenar los datos de forma correcta.</p>
        <a href="altaCiudadano.jsp" class="btn">Volver a la página de alta de ciudadano</a>
    </div>
</body>
</html>
