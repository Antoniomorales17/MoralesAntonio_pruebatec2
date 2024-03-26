package servlets;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Ciudadano;
import logica.Controladora;
import logica.Turno;

@WebServlet(name = "SvTurno", urlPatterns = {"/SvTurno"})
public class SvTurno extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Turno> listaTurnos = control.traerTurnos();

        if (listaTurnos != null) {
            String fechaInput = request.getParameter("inputDate");
            String estado = request.getParameter("estado");

            if (fechaInput != null && !fechaInput.isEmpty()) {
                Date fecha = control.formatearFecha(fechaInput);

                if (estado != null && !estado.isEmpty()) {
                    // Filtro por fecha y estado
                    listaTurnos = control.filtrarPorFechaEstado(fecha, estado);
                } else {
                    // Filtro solo por fecha
                    listaTurnos = control.filtrarPorFecha(fecha);
                }
            }
        }
        // Ordenar los turnos por ID
        control.ordernarTurnos(listaTurnos);

        HttpSession miSession = request.getSession();
        miSession.setAttribute("listaTurnos", listaTurnos);
        response.sendRedirect("mostrarTurnos.jsp");
    }

    @Override
    @SuppressWarnings("null")
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession miSession = request.getSession(false);
        try {

            if (miSession != null) {
                Ciudadano ciudadano = (Ciudadano) miSession.getAttribute("ciudadano");

                if (ciudadano != null) {
                    String fechaInput = request.getParameter("inputDate");
                    String tramite = request.getParameter("tipoTramite");

                    Date fecha = control.formatearFecha(fechaInput);

                    Turno turno = new Turno();

                    turno.setFecha(fecha);
                    turno.setTramite(tramite);
                    turno.setUnCiudadano(ciudadano);
                    turno.setEstado("En Espera");

                    control.crearTurno(turno);

                    response.sendRedirect("confirmacion.jsp");
                } else {
                    response.sendRedirect("datosInvalidos.jsp");
                }
            }
        } catch (IOException e) {
            System.out.println("Se ha producido un error en la creacion del turno" + e);
            response.sendRedirect("datosInvalidos.jsp");
        } finally {
            miSession.invalidate();
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
