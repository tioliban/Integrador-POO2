<!---Para subrayar:     <span style="text-decoration: underline">   </span>        ---> 
 <!---Para subrayar + negrita:    **<span style="text-decoration: underline">   </span>**         ---> 
<!---Para centrar:     <span style="text-align: center"> </span>  --->

####  Grupo X - Alumnos: Feldman, Martin & Schmitt, Gabriel   
<br/> <br/> 


# **Presentación Trabajo Integrador para Programación Orientada a Objetos II**

<br/> <br/>



El producto software a desarrollar se denomina:

# ***Sistema de gestión de expedientes para la entidad  administrativa Colegio de Arquitectos de Misiones***

<br/> 


##  Especificación de requisitos de software


#### &nbsp;&nbsp; &nbsp;&nbsp; <a name="planteoDelProblema"></a> **Planteo del problema** 

Actualmente, a partir del formulario que el profesional completa desde la página web de la entidad (Colegio de Arquitectos) puede generar un expediente. Al hacerlo, la información es enviada a un mail de la entidad y el Empleado Administrativo tiene que descargarla y separarla en distintas rutas y  archivos en su computadora.

Los profesionales sólo pueden agregar 3 tareas a un expediente, existiendo además otras, que el Empleado Administrativo debe agregar cuando es solicitado y requerido.

<br/>




#### &nbsp;&nbsp; &nbsp;&nbsp; Clientes potenciales

¿Quiénes están afectados por este problema y se beneficiarían de la solución propuesta? (es decir, los usuarios potenciales del software que están por construir).

El software puede ser útil para cualquier entidad que entre sus tareas tenga la gestión de expedientes y necesite interactuar por cuestiones relevantes sobre los mismos con profesionales, que son quienes abren los expedientes. 
<br/>




#### &nbsp;&nbsp; &nbsp;&nbsp; Solución propuesta

Escriban algunas oraciones que describan cómo la solución de software resolverá el problema descrito anteriormente.




#### **Requisitos funcionales:**
 enumeren los requisitos (funcionales) que debe tener el software para resolver el problema mencionado anteriormente. Es útil tratar de agrupar los requisitos en los que son esenciales (debe estar) y los que no son esenciales (sería bueno que estén).
<br/>


##### &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; RF de Expedientes:

- Crear, modificar y eliminar expedientes. La información que se almacena de cada expediente ha sido definida en « Introducción y Objetivos ».
- Pedir confirmación ante la solicitud de borrado de expedientes. 

Bussiness logic: 
- Se requiere poder especificar la renuncia del profesional, si la hubiera, dentro del expediente (específico de la tarea Dirección de Obra en una obra nueva).
- Recuperar de la base de datos y mostrar los datos al usuario. En el proceso, disponer de multiples métodos de selección de expedientes, que permitan recuperar aquellos que cumplan con ciertos atributos.  
<br/><br/>

##### &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RF de Administración de Sistema:

-   Definir un usuario Administrador, el cual posee facultades para manipular  todas las funciones del sistema. Se requiere otorgarle un nombre identificador, contraseña y un mail. 
- Crear, modificar, categorizar y eliminar Usuarios, siendo posible los roles: Profesional matriculado y Empleado Administrativo. La información relevante para cada usuario será:
    -  nombre, apellido, dni,
    - número de matricula (omitido para el Empleado Administrivo),
    - contacto (email y teléfono),
    - nombre de usuario (cuenta), contraseña 
    - permisos otorgados en el sistema . 

- El sistema debe contar con una instancia de Login, el cual permite llevar registro de las acciones realizadas por los empleadores del sistema. También, permite cerrar la sesión del usuario.
Operar únicamente si hay un usuario que haya iniciado sesión.

Bussiness logic: 
- Crear certificado de un expediente, que cuente con el abal de la entidad. En el mismo, se adjuntan datos como: nombre de la entidad, dirección, contacto (mail y/o teléfono), y su contenido.






<br/><br/>

##### &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; RF [Otros]:
 
Calcular, generar y mostrar estadísticas relacionadas a los diferentes conceptos del entorno. El usuario define el período de interés. Los resultados deben poder desplegarse también en modo escrito y ser manipulables mediante filtros.

Generar informes imprimibles, con la posibilidad de ser parametrizados por el usuario.

<br/><br/>




#### &nbsp;&nbsp; &nbsp;&nbsp; Arquitectura de software

¿Será esta una aplicación web / de escritorio / móvil (todas o algún otro tipo)? ¿Se ajustaría a la arquitectura de software Cliente-Servidor?

    Aplicacion web, con arquitectura Cliente-Servidor


<br/>



#### &nbsp;&nbsp; &nbsp;&nbsp; Wireframes
<pre>
Desarrollar los esquemáticos de las pantallas.

            https://integrador-diseno-de-pant-32f5da2baa3b8.webflow.io/

</pre>

<br/> <br/>



## <a name="intro"></a> **Introducción y objetivos** 

El Colegio de Arquitectos, que será referido como **la entidad** a lo largo del texto, tiene entre sus funciones la de registrar las tareas que corresponden a los profesionales cuando tienen ejercen sobre una obra.

La entidad cuenta con una página web desde la que, como se ha mencionado en «[Planteo del problema](#planteoDelProblema)», los profesionales envían al mail de la entidad la generación de un expediente luego de completar un formulario y adjuntar los planos de la obra requeridos.
<br/>


#### &nbsp;&nbsp; &nbsp;&nbsp;Entidades del escenario: 

Un **profesional** matriculado (arquitecto o arquitecta) es requerido por el propietario de un terreno para llevar a cabo una obra.

<br/>

Una **obra** posee: <br/>
- un propietario, que puede ser público (del Estado) o privado (un/a particular), <br/>
- un o una profesional, <br/>
- referencia castral y uno o varios números de partida inmboliarias,
- una ubicación y espacio físico (m²), 

<br/>

- tipología (qué tipo de obra es: vivienda, comercial, cultural, industrial, etc),
- objeto (si la obra es nueva o existente): si es existente, podría tener o no permisos. Que tenga permisos es igual a que la entidad ya posee algún expediente de esa obra. Si la obra es nueva requiere tareas (Dirección de Obra, Proyecto, Relevamiento). Si es existente y sin permisos, no se registrarán Direccion de Obra ni Proyecto porque esas tareas ya han sido realizadas y no fueron registradas.
<br/>
- tareas: muy importante. Cada tipología de obra tiene determinadas tareas que deben
realizarse para consecuentemente poder cerrar un expediente. 

<br/>

Un **expediente** se atribuye a un o una profesional y una obra. Y posee: <br/>
- un número identificador (ej: 19305/5/18),  <br/>
- fecha de inicio y de fin,  <br/>
- estado: abierto o cerrado,
- planos que pueden ser fisicos pero que actualmente pueden ser subidos por los profesionales en formato PDF en la página web de la entidad, <br/>
- y determinadas tareas que se llevan a cabo en la obra y que se están registrando en el expediente.

<br/>

Un certificado es entregado a los profesionales por mail. Éste certifica que ellos han  registrado las tareas debidamente en un expediente con la entidad. El ceritifcado contiene información tanto del profesional, como del propietario/a, la obra y del expediente.


<br/> <br/>



&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<span style="text-decoration: underline">Observación: </span> 

    
El o la profesional media entre la entidad y el propietario, mientras que el propietario no tiene interacción con la entidad, más solo abona el costo del cierre del expediente que le corresponda a través de un enlace que le llega por el arquitecto, el cual recibiría automáticamente en su mail [con el nuevo sistema] luego de que el actor administrativo cierre el expediente. 

<br/> <br/>

 
Por ello, los **objetivos del sistema** son: 
- complementar la página web de la entidad incorporando nuevas rutas, mecionadas posteriormente en « Alcance y limitaciones » que serán definidas en YYYYYY. Brindar una plataforma para la gestión de los expedientes de la entidad, y que devuelva información sobre los mismos. Dado que la plataforma es web, se busca reemplazar el excesivo manejo de archivos en las computadoras,
- interactuar con los profesionales de forma directa,
- otorgar con rapidez respuestas a las consultas que se reciben en el lugar de trabajo, al ser ésta una herramienta de administración que reemplazaría a las búsquedas manuales de información en los documentos fisicos o en las diferentes carpetas con numerosos archivos en las computadoras, 
- expandir el número de tareas disponibles que los profesionales podrán incorporar a los expedientes

<br/> <br/>



## **Alcance y limitaciones**

A través del proyecto se propone desarrollar una extensión de la pagina web, que esté enfocado a la gestión de los expedientes, y que agilize la comunicación con los profesionales. 

El proyecto modificará únicamente las rutas del módulo de autogestión de los profesionales, (http://www.arquitectosmisiones.org.ar/autogestion/index.php) que, a partir del proyecto, será el acceso para la gestión de expedientes únicamente para la cuenta del Empleado Administrativo, (pantalla principal que otorgará este proyecto).  En esta misma sección, el proyecto permitirá a los profesionales ver el historial de expedientes que posean, junto con su certificado. 

<br/> 




&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<span style="text-decoration: underline">Observaciones: </span> 

La entidad requiere que la cadena de interacciones                                                    (entidad <-----> arquitecto/a <-----> propietario) mencionada en                           [«Introducción y Objetivos»](#intro) se mantenga así, por lo que el nuevo sistema se limita a comunicar al profesional. 


<br/>

El sistema se limitará a ingresar manualmente el monto de cierre del expediente, porque según ha explicado la entidad a través de su representante demasiadas variables complejiizan el desarrollo de un módulo para obtener el monto. Por lo que el sistema no automatizará esta tarea.

<br/> <br/>




## **Especificación de módulos**
<br/> 

- **Módulo de expedientes:** brinda una plataforma para el registro, tratamiento y observación de expedientes. 
- **Módulo de propietarios:** brinda una plataforma para el registro, tratamiento y observación de propietarios. 
- **Módulo de certificados:** generará certificados de tarea profesional.

<br/>

- **Módulo de notificaciones:** se encargará de notificar al profesional ciertos estados de los expedientes vía mail. Éstos son: 
- <span style="text-decoration: underline"> Caso 1 </span>: Un expediente tiene una fecha de inicio y de fin. Cuando dentro de ese lapso  no se solicita el cierre del mismo, el sistema notificará al profesional que el expediente permanece abierto, cuál es la fecha de fin y el monto para poder cerrarlo.
- <span style="text-decoration: underline"> Caso 2 </span>: Informar al profesional que se encuentra disponible la liquidación del expediente para pagar. 

<br/>

- **Módulo de informes estadisticos:** se brindará un conjunto de valores estadisticos soliticados o aprobados por la entidad.


<br/> <br/>




## **Requerimientos Funcionales**
<br/>

**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  <span style="text-decoration: underline"> RF de Expedientes: </span>**


- Crear, modificar y eliminar expedientes. La información que se almacena de cada expediente está definida en [«Introducción y Objetivos»](#intro).
- Recuperar los expedientes a través de diferentes variables, con filtros.
- Pedir confirmación ante la solicitud de borrado de expedientes. 

<!--Add Bussiness Logic Here : -->
- Se requiere poder **especificar la renuncia del profesional**, si la hubiera, dentro del expediente(puntualmente de la tarea Dirección de Obra en una obra nueva).
- Se requiere poder dar de Baja a un profesional de la tarea Dirección de Obra, cuando es solicitado ***por otro profesional*** que ha sido contratado por el propietario de la obra para ***reemplazar*** al ***profesional actual***.  



<br/> <br/>



**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  <span style="text-decoration: underline"> RF de Administración de Sistema: </span>**


- Definir un usuario Administrador, el cual posee todas las facultades para manipular las funciones. Se requiere otorgar un nombre identificador, contraseña y un mail. 
- Crear, modificar, categorizar y eliminar Usuarios, siendo posible los roles: Profesional matriculado y Empleado Administrativo. La información relevante para cada usuario será: 
nombre, apellido, dni, número de matricula (omitido para el Empleado Administrivo), contacto (email y teléfono), nombre de usuario (cuenta), contraseña y permisos otorgados en el sistema  . 
- Operar únicamente si hay un usuario que haya iniciado sesión.
- El sistema debe contar con una instancia de Login, el cual permite llevar registro de las acciones realizadas por los empleadores del sistema. También, permite cerrar la sesión del usuario.

<!--Add Bussiness Logic Here : -->
- Crear certificados  y otros documentos  abalados por la entidad inherentes de la entidad. En ellos se adjunta información tal como: nombre de la entidad, dirección, contacto (mail y/o teléfono), y su contenido.

<br/> <br/>



**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  <span style="text-decoration: underline"> RF Otros: </span>**


- Calcular, generar y mostrar **estadísticas** con relación a los diferentes conceptos del minimundo (modelo de domino) en un período seleccionado por el usuario. Los resultados deben poder desplegarse también en forma de lista y ser manipulables mediante filtros.


- Producir **informes imprimibles** para la gestión administrativa del comercio, a partir de consultas realizadas sobre los diferentes conceptos del sistema.
  

<br/> <br/>





## **Requerimientos No funcionales** 
<br/>


**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<span style="text-decoration: underline">Eficiencia: </span>**


- El sistema debe ser capaz de procesar al menos 4 transacciones por segundo.
- Toda funcionalidad del sistema y transacción de negocio debe responder al usuario en menos de 4 segundos.
- El sistema debe ser capaz de operar adecuadamente con al menos 200? usuarios con sesiones concurrentes.
- Los datos modificados en la base de datos deben ser actualizados para todos los usuarios que acceden en menos de 7 segundos.

<br/> <br/>


**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<span style="text-decoration: underline">Seguridad lógica y de datos: </span>**


- Los permisos de acceso al sistema podrán ser cambiados solamente por el administrador de acceso a datos.
- Los datos del sistema deben respaldarse cada 24 horas. Para los respaldos se puede utilizar un cloud service o ser almacenados en una localidad segura ubicada en un edificio distinto al que reside el sistema.
- Si se identifican ataques de seguridad o brecha del sistema, el mismo no continuará operando hasta ser desbloqueado por un administrador de seguridad.

<br/> <br/>

**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<span style="text-decoration: underline">Usabilidad: </span>**


- El sistema se ejecutará en un navegador web.
- La entidad debe contar con una red local para poder utilizar el sistema en múltiples ordenadores. 
- El tiempo de aprendizaje del sistema para un usuario deberá ser menor a 4 horas.
- La tasa de errores cometidos por el usuario deberá ser menor del 1% de las transacciones totales ejecutadas en el sistema.
- El sistema debe contar con manuales de usuario estructurados adecuadamente.
- El sistema debe proporcionar mensajes de error que sean informativos y orientados a usuario final.
- El sistema debe poseer interfaces gráficas bien formadas.
- La documentación estará restringida según los roles. 
- Los valores estadísticos del sistema serán confiables a partir de 2 meses de uso del sistema.

<br/> <br/>


