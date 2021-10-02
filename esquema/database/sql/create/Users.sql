

/* tipos de Usuarios del Sistema     {

        a) Empleado Administrativo: link ? 
        b) Profesionales 
}


--*/



-- ROLES 

CREATE ROLE
        EmpleadoAdministrativo,  
        Profesional;




-- USUARIOS 

 
CREATE ROLE empleadoAdministrativo LOGIN PASSWORD 'pass'; 


-- usuarios de Profesionales

CREATE ROLE arielRD LOGIN PASSWORD 'pass';
CREATE ROLE arquimedes LOGIN PASSWORD 'pass';



-- crear un usuario (rol:profesional) que se registra
-- CREATE ROLE nombreUsuarioRecibidoDesdeFrontEnd LOGIN PASSWROD 'passwordRecibida'; 
 