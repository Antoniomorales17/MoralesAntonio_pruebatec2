package logica;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import persistencia.ControladoraPersistencia;
import servlets.SvTurno;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    //-----------Ciudadanos------------
    public void crearCiudadano(Ciudadano cidada) {
        controlPersis.crearCiudadano(cidada);
    }

    public Ciudadano traerCiudadano(int id) {
        return controlPersis.traerCiudadano(id);
    }

    public int obtenerIdCiudadano(String nombre, String apellido, String dni) {
        List<Ciudadano> ciudadanos = controlPersis.traerCiudadanos();

        for (Ciudadano ciudadano : ciudadanos) {
            if (ciudadano.getNombre().equalsIgnoreCase(nombre)
                    && ciudadano.getApellido().equalsIgnoreCase(apellido)
                    && ciudadano.getDni().equalsIgnoreCase(dni)) {
                return ciudadano.getIdCiudadano();
            }
        }
        return 0;

    }

    public List<Ciudadano> traerCiudadanos() {
        return controlPersis.traerCiudadanos();
    }

    //--------------Turnos-----------
    public void crearTurno(Turno nuevoTurno) {
        controlPersis.crearTurno(nuevoTurno);
    }

    public Turno traerTurno(int id) {
        return controlPersis.traerTurno(id);
    }

    public List<Turno> traerTurnos() {
        return controlPersis.traerTurnos();

    }

    public void editarTurno(Turno turno) {
        controlPersis.editarTurno(turno);
    }

    public void eliminarTurno(int id) {
        controlPersis.eliminarTurno(id);
    }
    
    
    //--------------------MÉTODOS--------------------
    public Date formatearFecha(String fechaInput) {
        if (fechaInput == null || fechaInput.isEmpty()) {
            return null;
        }

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
            Date fecha = sdf.parse(fechaInput);
            return fecha;
        } catch (ParseException ex) {
            Logger.getLogger(SvTurno.class.getName()).log(Level.SEVERE, "Error al parsear la fecha", ex);
            return null;

        }
    }

    //Filtros de turnos
    public List<Turno> filtrarPorFecha(Date fecha) {
        return controlPersis.traerTurnos().stream()
                .filter(t -> t.getFecha().equals(fecha))
                .collect(Collectors.toList());
    }

    public List<Turno> filtrarPorFechaEstado(Date fecha, String estado) {
        List<Turno> turnosFiltrados = filtrarPorFecha(fecha);

        turnosFiltrados = turnosFiltrados.stream()
                .filter(t -> t.getEstado().equalsIgnoreCase(estado))
                .collect(Collectors.toList());
        return turnosFiltrados;
    }

    //Ordenar turnos por id de manera ascendente
    public void ordernarTurnos(List<Turno> turnos) {
        Collections.sort(turnos, (turno1, turno2) -> Integer.compare(turno1.getIdTurno(), turno2.getIdTurno()));
    }
    
    //Validación de datos 
    //Expresión regular que permite letras con tildes y la letra 'ñ'

    public void validarNombApe(String texto) throws DatosInvalidosException {
        String regex = "^[a-zA-ZáéíóúÁÉÍÓÚñÑ\\s]+$";
        if (!texto.matches(regex)) {
            throw new DatosInvalidosException("El nombre o apellido contienen caracteres no válidos.");
        }
    }

    // Expresión regular que permite un DNI de 8 dígitos
    public void validarDNI(String dni) throws DatosInvalidosException {
        String regex = "^[0-9]{8}$";
        if (!dni.matches(regex)) {
            throw new DatosInvalidosException("El DNI debe contener exactamente 8 dígitos numéricos.");
        }
    }
// Expresión regular que permite un número de teléfono de 9 dígitos

    public void validarTelefono(String telefono) throws DatosInvalidosException {
        String regex = "^[0-9]{9}$";
        if (!telefono.matches(regex)) {
            throw new DatosInvalidosException("El número de teléfono debe contener exactamente 9 dígitos.");
        }
    }
    
    
    
    //Nuevos metodos
    public List<Turno> filtrarPorNombre(List<Turno> turnos, String nombre) {
    return turnos.stream()
            .filter(t -> t.getUnCiudadano().getNombre().equalsIgnoreCase(nombre))
            .collect(Collectors.toList());
}

public List<Turno> filtrarPorId(List<Turno> turnos, int id) {
    return turnos.stream()
            .filter(t -> t.getUnCiudadano().getIdCiudadano() == id)
            .collect(Collectors.toList());
}

 

    
}
