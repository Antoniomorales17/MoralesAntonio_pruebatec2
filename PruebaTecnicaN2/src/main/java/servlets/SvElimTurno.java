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

@WebServlet(name = "SvElimTurno", urlPatterns = {"/SvElimTurno"})
public class SvElimTurno extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idTurno = Integer.parseInt(request.getParameter("idTurn"));

        control.eliminarTurno(idTurno);

        List<Turno> turnosActualizados = control.traerTurnos();

        control.ordernarTurnos(turnosActualizados);

        HttpSession session = request.getSession();
        session.setAttribute("listaTurnos", turnosActualizados);

        response.sendRedirect("mostrarTurnos.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
