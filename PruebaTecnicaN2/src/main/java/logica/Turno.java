
package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Turno implements Serializable {
     @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int idTurno;
     
    @Temporal(TemporalType.DATE)
    private Date fecha;
    private String tramite;
    private String estado;
    
    @ManyToOne
    @JoinColumn(name = "idCiuda")
    private Ciudadano unCiudadano;

    public Turno() {
    }

    public Turno(int idTurno, Date fecha, String tramite, String estado, Ciudadano unCiudadano) {
        this.idTurno = idTurno;
        this.fecha = fecha;
        this.tramite = tramite;
        this.estado = estado;
        this.unCiudadano = unCiudadano;
    }

    public int getIdTurno() {
        return idTurno;
    }

    public void setIdTurno(int idTurno) {
        this.idTurno = idTurno;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getTramite() {
        return tramite;
    }

    public void setTramite(String tramite) {
        this.tramite = tramite;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Ciudadano getUnCiudadano() {
        return unCiudadano;
    }

    public void setUnCiudadano(Ciudadano unCiudadano) {
        this.unCiudadano = unCiudadano;
    }
    
    
    
    
}
