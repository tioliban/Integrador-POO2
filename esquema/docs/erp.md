# Especificación de requisitos de software

## Enunciado del problema
<!-- Escriban algunas oraciones que describan el problema que están tratando de resolver, es decir, justifiquen por qué se necesita este software.
-->
<div  style ="text-align: justify">
    <p>Actualmente, a partir del formulario que el profesional completa desde la página web de la entidad (Colegio de Arquitectos) puede generar un expediente. Al hacerlo, la información es enviada a un mail de la entidad y el Empleado Administrativo tiene que descargarla y separarla en distintas rutas y  archivos en su computadora.</p>
    <p>Los profesionales sólo pueden agregar 3 tareas a un expediente, existiendo además otras, que el Empleado Administrativo debe agregar cuando es solicitado y requerido.</p>
</div>

## Clientes potenciales
<!--
¿Quiénes están afectados por este problema y se beneficiarían de la solución propuesta? _(es decir, los usuarios potenciales del software que están por construir)_.
-->
<div  style ="text-align: justify">
    <p>El software puede ser útil para cualquier entidad que entre sus tareas tenga la gestión de expedientes y necesite interactuar por cuestiones relevantes sobre los mismos con profesionales, que son quines abren los expedientes.</p>
</div>

## Solución propuesta
<!--
Escriban algunas oraciones que describan cómo la solución de software resolverá el problema descrito anteriormente.
-->
<div  style ="text-align: justify">
    <p>La solución de software propuesta será capaz de permitir al administrador, realizar la gestión completa de los usuarios(dar de alta, leer, modificar y eliminar), propietarios y expedientes con sus asociaciones de tareas, además de tener la posibilidad de cálcular, generar y mostrar estadísticas relacionadas a los diferentes conceptos del entorno y en períodos de interés.</p>
</div>

**Requisitos funcionales**: 
<!--enumeren los requisitos _(funcionales)_ que debe tener el software para resolver el problema mencionado anteriormente. Es útil tratar de agrupar los requisitos en los que son esenciales _(debe estar)_ y los que no son esenciales _(sería bueno que estén)_.
-->
<div  style ="text-align: justify">
    <p>Como administradora, quiero poder dar de alta un expediente, con su número de expediente, profesional director de obra, fechas, estado, planos correspondientes y las tareas que se llevarán a cabo.</p>
    <p>Como administradora, quiero poder modificar un expediente para actualizar la información del profesional director de obra, las fechas, el estado y las tareas, según sea necesario.</p>
    <p>Como administradora, quiero poder crear un certificado de expediente que incluya el nombre de la entidad, dirección y contacto, además de la información del expediente para poder imprimirlo.</p>
    <p>Como administradora, quiero poder ver un expediente, junto con toda su información, para responder a las consultas sobre los expedientes y seguimiento de los mismos.</p>
    <p>Como administradora, quiero poder realizar el cierre de un expediente, para dar por finalizado el servicio realizado y registrar el pago del mismo.</p>
    <p>Como administradora, quiero poder dar de alta un usuario, con su nombre, apellido, número de documento y número de matricula si es un profesional matriculado, para que puedan interactuar con el sistema.</p>
    <p>Como administradora, quiero poder modificar un usuario, para actualizar el nombre, apellido, número de documento y número de matricula, según sea necesario.</p>
    <p>Como administradora, quiero poder ver un usuario, junto con toda su información, para ver que usuarios tengo registrados en el sistema actualmente.</p>
    <p>Como administradora, quiero poder dar de baja a un usuario, para que no pueda interactuar con el sistema o ya no deba hacerlo.</p>
    <p>Como administradora, quiero poder dar de alta una obra, informando si es público o privado, si es privado con su propietario, su información catastral, números de partida inmoviliaria, ubicación, tipo de propiedad (vivienda, comercio, industria, etc), profesional asociado, expediente y tareas asociadas, para registrar una nueva obra.</p>
    <p>Como administradora, quiero poder modificar una obra, para actualizar su propietario, información de la propiedad, profesional asociado, expedientes y las tareas.</p>
    <p>Como administradora, quiero poder ver una obra, junto con toda su información, para informar de su estado y seguimiento a los profesionales que deban ser notificados.</p>
    <p>Como administradora, quiero poder cerrar una obra, para registrar la finalización de los expedientes de la misma, junto con las tareas y el pago.</p>
</div>

## Arquitectura de software
<!--
¿Será esta una aplicación web / de escritorio / móvil _(todas o algún otro tipo)_? ¿Se ajustaría a la arquitectura de software Cliente-Servidor?
-->
<div style ="text-align: justify">
    <p>La aplicación sera web, con arquitectura Cliente-Servidor</p>
</div>