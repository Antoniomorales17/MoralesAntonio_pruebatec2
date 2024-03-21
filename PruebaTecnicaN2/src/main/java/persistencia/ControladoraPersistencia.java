package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Ciudadano;
import logica.Turno;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {

    CiudadanoJpaController ciudaJpa = new CiudadanoJpaController();
    TurnoJpaController turnoJpa = new TurnoJpaController();

    //-------Ciudadanos------
    public void crearCiudadano(Ciudadano ciuda) {
        ciudaJpa.create(ciuda);
    }

    public Ciudadano traerCiudadano(int id) {
        return ciudaJpa.findCiudadano(id);
    }

    public List<Ciudadano> traerCiudadanos() {
        return ciudaJpa.findCiudadanoEntities();
    }

    //------Turnos----------
    public void crearTurno(Turno nuevoTurno) {
        turnoJpa.create(nuevoTurno);
    }

    public Turno traerTurno(int id) {
        return turnoJpa.findTurno(id);
    }

    public List<Turno> traerTurnos() {
        return turnoJpa.findTurnoEntities();
    }

    public void editarTurno(Turno turno) {
        try {
            turnoJpa.edit(turno);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eliminarTurno(int id) {
        try {
            turnoJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
