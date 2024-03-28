# Documentación tuCita 📘📘

## Prueba Técnica Avanzado / Hack A Boss / Softeck

![landing](https://i.imgur.com/zXuGUej.png)

Se trata de una aplicación que permite a los usuarios pedir y gestionar sus citas con la administración. Puedes seleccionar la modalidad, registrar la hora en el calendario y editar el estado entre "En espera" y "Atendido"

## Pre-requisitos 🧾

🔴 Java 17 o superior

🔴 IDE compatible con Java 17 o superior

🔴 Un gestor de bases de datos compatible con MySQL

🔴 Un contenedor de servlet como Apache Tomcat para desplegar el proyecto web

⚠ La base de datos se encuentras en sources con el nombre : turnero

## Modelado de clases

![modelado](https://i.imgur.com/ycue4rF.png)

## Funciones generales

La aplicación permite hacer el recorrido de un CRUD completo :

#### Registro de usuario

✅ Los usarios deben de ingresar su nombre, apellido, Dni y telefono para iniciar el proceso de selección

✅ Se validan los datos para que sean correctos. Se muestra pantalla de éxito si todo ha salido y una pantalla de error en caso contrario.

#### Reserva de la cita

✅ Los usuarios pueden seleccionar en el calendario la fecha y horario disponibles

✅ Se selecciona el tipo de trámite que requieran resolver 

#### Visualizacion de las citas

![vistaCitas](https://i.imgur.com/vWwG6Z1.png)

✅ Los usuarios tienen acceso a un registro de los turnos que han sido reservados.

✅ Tienen la capacidad de filtrar los turnos según la fecha, lo que les permite visualizar aquellos programados para un día en particular.

✅ Además, se les ofrece la opción de aplicar filtros de estado, lo que les permite identificar los turnos en espera o aquellos que ya han sido atendidos

#### Cancelar cita

✅ Se añade la posibilidad de cancelar una cita

✅ Una vez eliminada una cita, ese hueco queda libre para otros clientes

### Interfaz de usuario

🔵 Se busque una experiencia limpia y agradable. Basando el diseño en la UX para una intereaccion intuitiva y dinámica

🔵 Landing page clara con sus respectivas pestañas en el Navbar. Tabla de usuarios y citas sencillas mostrando los estados en cada caso

🔵 Se han creado rutas de éxito y error en cada caso para notificar correctamente al usuario.

### Tecnologías

🔵 La aplicación se ha diseñado con un enfoque en tecnologías web estándar, aprovechando la potencia de Java para manejar la lógica del servidor y JSP (JavaServer Pages) para la generación dinámica de vistas.

🔵 Para obtener un resultado eficiente se han implementado estilos de Boopstrap, Tailwind y Css puro para optimizar el diseño. Se ha creado una carpeta Css para algunos estilos globales de la aplicación.

🔵 Para el almacenamiento seguro y eficiente de los datos de nuestros usuarios y sus turnos, hemos optado por utilizar MySQL como sistema de gestión de base de datos

### Supuestos

🔵 He optado por la creación de 4 servlets (Ciudadano, Turno, eliminar y editar) para asi obtener una separación de responsabilidades y una mejora organización del código

🔵 Para los JSP he decidio crear algunos componentes (Header, footer) que se mantienen en la pagina principal para una reutilización de codigo y consistencia en el diseño.

🔵 Los turnos se crean en estado de "en espera" ("false") por defecto, más tarde se pueden modificar.

🔵 A falta de incorporar un sistema de login y password (deseable en el futuro) permitiendo así ser una herramienta completa, la aplicación funciona como un gestor general capaz de crear ciudadanos y citas
