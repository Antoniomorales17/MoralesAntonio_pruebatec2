package logica;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Ciudadano;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-03-21T18:25:16")
@StaticMetamodel(Turno.class)
public class Turno_ { 

    public static volatile SingularAttribute<Turno, Date> fecha;
    public static volatile SingularAttribute<Turno, String> estado;
    public static volatile SingularAttribute<Turno, String> tramite;
    public static volatile SingularAttribute<Turno, Ciudadano> unCiudadano;
    public static volatile SingularAttribute<Turno, Integer> idTurno;

}