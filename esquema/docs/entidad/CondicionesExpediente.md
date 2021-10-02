<pre> 


 

 Antes, aclarar que los Estados posibles de un expediente son:
- abierto 
- cerrado 

## Condiciones de un expediente


Segun estado: [abierto] {

        <!--Desarrollo habitual de ciclo de vida de un expediente -->

        . <!-- Agregar acá (si las hubiera) condiciones previas a poder liquirdar   -->
        . Para liquidar 
        . A la espera de Carga de Comprobante de Pago
        . Para cerrar (luego de que Empleado Administrativo haya confirmado la autenticidad del Comprobante de Pago)
        . Finalizado?

        
         Casos de Uso que pueden repercutir en el ciclo de vida habitual de un expediente:

        Solicitar Reemplazo Profesional: 

        la tabla Nota de Reemplazo conoce la tabla Condiciones. Por lo que una nota podria poseer las siguientes condiciones: 
        1. en evaluacion,
        2. aprobado,
        3. desaprobado



        Aprobar Reemplazo Profesional : 
        
        ACLARACION: profesional y expediente 1 son los que van a ser actualizados.
        Profesional 2 es quien solicita reemplazar al profesional 1 y el expediente 2  es creado con habitualidad 
        para registrar la tarea de profesional 2**
        
        Punto de partida: sólo existe Expediente 1. 

        Desarrollo de ciclos de vida de expedientes con Reemplazo Profesional

        0. Solicitud enviada por Profesional 2. Ninguna condicion es requerida aún.
        1. Empleado Administrativo aprueba -> 
             a)  se modifica el expediente 1 ( quitando la Dirección de Obra al profesional 1, crea una fila en la TABLA Reemplazo Profesional, e incorpora en forma textual el evento de Reemplazo de Profesional dentro del expediente). 

        Tras ser aprobado un Reemplazo de Profesional, el módulo automatizado: 
        - notificará al profesional 1 del evento,
       
        condiciones de expedientes 1 y 2 en su Ciclo de vida con CASO Reemplazo Profesional: 

        Expediente 1:
        1. Tras ser aprobado el Reemplazo Profesional, si el expediente posee otras tareas además de Dirección de Obra, entonces seguirá el 
        ciclo de vida habitual de un expediente con esas tareas. En cambio, si es la única tarea del expediente se cierra. En ambos casos la única información que el expediente 1 conoce sobre el Reemplazo Profesional es una simple observación 

        Expediente 2:
        1. Se crea y sigue el ciclo de vida habitual de un expediente


        - y abrirá un expediente 2 para el profesional 2 con los datos que ya ha sumunistrado en la solicitud (prop, datos catasrales y 
        partida/s inmobiliaria/s).
        Este expediente(2) contendrá unicamente la tarea Dirección de Obra y acceso al archivo de Nota Reemplazo Profesional que fue presentado al Empleado Adminstrativo, el valor y la foto que el Avance de Obra. Cuando sea requerido, este profesional (2) podrá agregar más tareas desde el caso de uso Modificar Expediente.

}

Segun estado: [cerrado] {


}









</pre> 