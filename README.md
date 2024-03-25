# Documentación tuCita 📘📘

## Prueba Técnica Avanzado / Hack A Boss / Softeck

Se trata de una aplicacion que permite a los usuarios pedir y gestionar sus citas con la administriación. Puedes seleccioanr la modalidad, registrar la hora en el calendario y editar el estado entre "En espera" y "Atendido"

### Modelado de clases
![modelado](https://i.imgur.com/ycue4rF.png)

### Funciones generales
La aplicación permite hacer el recorrido de un CRUD completo :

#### Registro de usuario
🔵 Los usarios deben de ingresar su nombre, apellido, Dni y telefono para iniciar el proceso de selección

🔵 Se validan los datos para que sean correctos.Se muestra pantalla de exito si todo ha salido y una pantalla de error en caso contrario.

#### Reserva de la cita
🔵 Los usuarios pueden seleccionar en el calendario la fecha y horario disponibles

🔵 Se selecciona el tipo de tramite que requieran resolver 

#### Visualizacion de las citas
🔵 Los usuarios tienen acceso a un registro de los turnos que han sido reservados.

🔵 Tienen la capacidad de filtrar los turnos según la fecha, lo que les permite visualizar aquellos programados para un día en particular.

🔵 Además, se les ofrece la opción de aplicar filtros de estado, lo que les permite identificar los turnos en espera o aquellos que ya han sido atendidos

#### Cancelar cita
🔵 Se añade la posibilidad de cancelar una cita

🔵 Una vez eliminada una cita, ese hueco queda libre para otros clientes

### Interfaz de usuario

