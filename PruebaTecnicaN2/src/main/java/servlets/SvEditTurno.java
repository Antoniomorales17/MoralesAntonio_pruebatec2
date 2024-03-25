
package servlets;

import java.io.IOException;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Turno;


@WebServlet(name = "SvEditTurno", urlPatterns = {"/SvEditTurno"})
public class SvEditTurno extends HttpServlet {

   Controladora control = new Controladora();

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idTurnoEdit = Integer.parseInt(request.getParameter("idTurno"));
        System.out.println(idTurnoEdit);

        Turno turnoEdit = control.traerTurno(idTurnoEdit);
        String estado = turnoEdit.getEstado();

        if (estado != null && !estado.isEmpty()) {
            if (estado.equalsIgnoreCase("En Espera")) {
                turnoEdit.setEstado("Atendido");
            } else {
                turnoEdit.setEstado("En Espera");
            }
            control.editarTurno(turnoEdit);
        }
        List<Turno> estadosActualizados = control.traerTurnos();

        // Ordenar los turnos por ID asc
        control.ordernarTurnos(estadosActualizados);

        HttpSession session = request.getSession();
        session.setAttribute("listaTurnos", estadosActualizados);

        response.sendRedirect("mostrarTurnos.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
