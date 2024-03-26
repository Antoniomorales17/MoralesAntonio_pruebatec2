<%@page import="logica.Turno"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html  lang="es">
    <%@include file="componentes/head.jsp"%>
    <style>

        .table th,
        .table td {
            padding: 10px;
        }

        .table thead th {
            background-color: #000;
            color: #fff;
        }

        .table tbody td {
            background-color: #f0f0f0;
        }

        .table tbody tr:nth-child(odd) {
            background-color: #e0e0e0;
        }

        .table tbody tr:nth-child(even) {
            background-color: #d0d0d0;
        }
    </style>
    <body>
        <%@include file="componentes/header.jsp"%>
        <section>

            <div class="container mt-5 shadow p-3 mb-5 bg-body rounded">

                <h4 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">Citas</h4>
                <p class="lead mb-4">Puede filtrar las citas según su fecha y estado:</p>


                <form action="SvTurno" method="GET" class="mb-3">
                    <div class="container mt-3">
                        <div class="d-flex align-items-center gap-2 justify-content-around">
                            <div class="col-md-4">
                                <label for="inputDate" class="form-label">Fecha:</label>
                                <input type="date" class="form-control" id="inputDate" name="inputDate">
                            </div>
                            <div class="container d-flex align-items-end justify-content-around align-self-end">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="En Espera" name="estado">
                                    <label class="form-check-label" for="inlineCheckbox1">En Espera</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="Atendido" name="estado">
                                    <label class="form-check-label" for="inlineCheckbox2">Atendido</label>
                                </div>
                                <button type="submit" class="btn btn-warning btn-lg" style="background-color: #3fbac6; border-color: #3fbac6;">Buscar</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div> 

            <!-- Tabla de Turnos -->
            <div class="container mt-5 shadow p-3 mb-5 bg-body rounded">
                <h5 class="text-3xl font-bold tracking-tighter sm:text-4xl xl:text-5xl">Lista de Citas</h5>
                <table class="table table-bordered rounded table-striped" style="background-color: #9CDBF2;">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Turno</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>            
                            <th scope="col">DNI</th>
                            <th scope="col">Trámite</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Cancelar</th>
                        </tr>
                    </thead>

                    <%List<Turno> listaTurnos = (List) request.getSession().getAttribute("listaTurnos");%>

                    <% if (listaTurnos != null && !listaTurnos.isEmpty()) { %>
                    <tbody>
                        <% SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); %>
                        <%for (Turno turno : listaTurnos) {%>
                        <tr>
                            <th scope="row"><%=turno.getIdTurno()%></th>
                            <td><%= sdf.format(turno.getFecha())%></td>
                            <td><%=turno.getUnCiudadano().getNombre()%></td>
                            <td><%=turno.getUnCiudadano().getApellido()%></td>
                            <td><%=turno.getUnCiudadano().getDni()%></td>
                            <td><%=turno.getTramite()%></td>
                            <td>
                                <form action="SvEditTurno" method="POST" class="d-inline">
                                    <input type="hidden" name="idTurno" value="<%=turno.getIdTurno()%>">
                                    <button class="btn btn-warning btn-sm" type="submit">
                                        <%=turno.getEstado()%> <img src="assets/edit.png" alt="Editar" width="16" height="16" style="margin-left: 20px;">
                                    </button>
                                </form>
                            </td>
                            <td>
                                <form action="SvElimTurno" method="POST" id="eliminarTurnoForm">
                                    <input type="hidden" name="idTurn" id="idTurn" value="<%=turno.getIdTurno()%>">
                                    <button type="submit" class="btn btn-danger btn-sm">
                                        Eliminar <img src="assets/delete.png" alt="Eliminar" width="16" height="16" style="margin-left: 20px;">
                                    </button>
                                </form>
                            </td>

                        </tr> 
                        <%}%>
                    </tbody>
                    <%}%>
                </table>
            </div>
        </section>
        <%@include file="componentes/footer.jsp"%> 
    </body>
</html>