<!DOCTYPE html>
<html lang="es">
    <%@include file="componentes/head.jsp"%>

    <body>
        <%@include file="componentes/header.jsp"%>
        <section class="p-5">

            <div class="container-md shadow p-3 mb-5 bg-body rounded" style="background-color: #e3f2fd;">
                <h3 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">Formulario para Sacar Cita</h3>
                <p class="lead mb-4">Para obtener una cita se deben introducir los datos de la persona que va a reservar la cita. Todos los campos son obligatorios.</p>
                <form action="SvCiudadano" method="POST" class="row g-3" accept-charset="ISO-8859-1" style="font-family: 'Poppins', sans-serif;">
                    <div class="col-md-6">
                        <label for="inputNombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="inputNombre" name="inputNombre" placeholder="Nombre"  required maxlength="50">
                    </div>
                    <div class="col-md-6">
                        <label for="inputApellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="inputApellido" name="inputApellido" placeholder="Apellido" required maxlength="50">
                    </div>

                    <div class="col-md-6">
                        <label for="inputDNI" class="form-label">DNI</label>
                        <input type="text" class="form-control" id="inputDNI"  name="inputDNI" placeholder="DNI" required maxlength="8">
                    </div>
                    <div class="col-md-6">
                        <label for="inputTel" class="form-label">Teléfono</label>
                        <input type="tel" class="form-control" id="inputTel"  name="inputTel" placeholder="Teléfono" required maxlength="9">
                    </div>

                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-lg" style="background-color: #3fbac6; border-color: #3fbac6;">Enviar Datos</button>
                    </div>
                </form>
            </div>
        </section>
        <%@include file="componentes/footer.jsp"%> 
    </body>
</html>
