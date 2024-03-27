<!DOCTYPE html>
<html lang="es">
    <%@include file="componentes/head.jsp"%>
    <body>
        <%@include file="componentes/header.jsp"%>
        <section class="m-5">
            <div class="container-md shadow p-3 mb-5 bg-body rounded" >
                <h3 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">Sacar Cita</h3>
                <p class="lead mb-4">Selecione el dia del turno y el tipo de tr�mite que desea realizar.</p>
                <form action="SvTurno" method="POST" class="row g-3">
                    <div class="col-md-6">
                        <label for="inputDate" class="form-label">Fecha Turno</label>
                        <input type="date" class="form-control" id="inputDate" name="inputDate" required>
                    </div>
                    <div class="col-md-6">
                        <label for="inputTramite" class="form-label">Tr�mites</label>
                        <select id="tipoTramite" name="tipoTramite" class="form-select" required>
                            <option selected disabled>Elija un tr�mite...</option>
                            <option value="Consumo">Consumo</option>
                            <option value="Transporte y Tr�fico">Transporte y Tr�fico</option>
                            <option value="Finanzas y Impuestos">Finanzas y Impuestos</option>
                            <option value="Infraestructura y Obras P�blicas">Infraestructura y Obras P�blicas</option>
                            <option value="Contribuyente">Contribuyente</option>
                            <option value="Cultura">Cultura</option>
                            <option value="Empleo">Empleo</option>
                            <option value="Empadronamiento">Empadronamiento</option>
                            <option value="Movilidad">Movilidad</option>
                            <option value="Identificaci�n Electr�nica">Identificaci�n Electr�nica</option>
                            <option value="Padr�n y Censo">Padr�n y Censo</option>
                            <option value="Protecci�n Animal">Protecci�n Animal</option>
                            <option value="Salud">Salud</option>
                            <option value="Servicios Sociales">Servicios Sociales</option>
                            <option value="Urbanismo y Vivienda">Urbanismo y Vivienda</option>
                            <option value="Extranjeria">Extranjeria</option>
                        </select>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-warning btn-lg " style="background-color: #3fbac6;">Guardar Turno</button>
                    </div>
                </form>
              
            </div>
        </section>
        <%@include file="componentes/footer.jsp"%> 
    </body>
</html>
