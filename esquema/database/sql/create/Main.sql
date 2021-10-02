

/*         			Scirpt de Creación de Modelo Conceptual para Trabajo Final - Proyecto Software 

 		Sistema de Gestión de Expedientes para la entidad administrativa Colegio de Arquitectos de la Provincia de Misiones

	Alumno: Feldman, Martin Nicolás
	Año: 2021

**/


CREATE TABLE estados (
                estado_id INT AUTO_INCREMENT NOT NULL,
                estado VARCHAR(10) NOT NULL,
                PRIMARY KEY (estado_id)
);


CREATE TABLE condiciones (  
        condicion_id INT AUTO_INCREMENT NOT NULL,
        condicion VARCHAR(256) NOT NULL, 
        PRIMARY KEY (condicion_id)
);



CREATE TABLE comprobantes_pago (
                comprobante_pago_id INT AUTO_INCREMENT NOT NULL,
                comprobante LONGBLOB,
                PRIMARY KEY (comprobante_pago_id)
);


CREATE TABLE ubicaciones (
                ubicacion_id INT AUTO_INCREMENT NOT NULL,
                PRIMARY KEY (ubicacion_id)
);


CREATE TABLE planos (
                plano_id INT AUTO_INCREMENT NOT NULL,
                plano LONGBLOB NOT NULL,
                PRIMARY KEY (plano_id)
);


CREATE TABLE tareas (
                tarea_id INT AUTO_INCREMENT NOT NULL,
                tarea VARCHAR(50) NOT NULL,
                fecha_inicio DATE NOT NULL,
                fecha_final DATE,
                plano_id INT NOT NULL,
                PRIMARY KEY (tarea_id)
);


CREATE TABLE superficies (
                superficie_id INT AUTO_INCREMENT NOT NULL,
                superficie_con_permiso DOUBLE PRECISION NOT NULL,
                superficie_sin_permiso DOUBLE PRECISION NOT NULL,
                PRIMARY KEY (superficie_id)
);


CREATE TABLE objetos (
                objeto_id INT AUTO_INCREMENT NOT NULL,
                objeto VARCHAR(10) NOT NULL,
                PRIMARY KEY (objeto_id)
);


CREATE TABLE tipologias (
                tipologia_id INT AUTO_INCREMENT NOT NULL,
                tipologia VARCHAR(40) NOT NULL,
                PRIMARY KEY (tipologia_id)
);


CREATE TABLE partidas_inmobiliarias (
                partidas_inmobiliarias_id INT AUTO_INCREMENT NOT NULL,
                partida_inmobiliaria_numero INT NOT NULL,
                PRIMARY KEY (partidas_inmobiliarias_id)
);


CREATE TABLE referencias_catastrales (
                referencia_catastral_id INT AUTO_INCREMENT NOT NULL,
                seccion INT NOT NULL,
                chacra INT NOT NULL,
                manzana INT NOT NULL,
                parcela INT NOT NULL,
                PRIMARY KEY (referencia_catastral_id)
);


CREATE TABLE profesionales (
                profesional_id INT AUTO_INCREMENT NOT NULL,
                profesional_nombre VARCHAR(30) NOT NULL,
                profesional_apellido VARCHAR(55) NOT NULL,
                profesional_numero_matricula INT NOT NULL,
                PRIMARY KEY (profesional_id)
);


CREATE TABLE notas_reemplazo_profesional (
                nota_reemplazo_profesional_id INT AUTO_INCREMENT NOT NULL,
                profesional_id INT NOT NULL,
                nota_aprobada BOOLEAN,
                PRIMARY KEY (nota_reemplazo_profesional_id)
);


CREATE TABLE propietarios (
                propietario_id INT AUTO_INCREMENT NOT NULL,
                propietario_nombre VARCHAR(30) NOT NULL,
                propietario_cuit VARCHAR(30) NOT NULL,
                PRIMARY KEY (propietario_id)
);


CREATE TABLE obras (
                obra_id INT AUTO_INCREMENT NOT NULL,
                profesional_id INT NOT NULL,
                propietario_id INT NOT NULL,
                tipologia_id INT NOT NULL,
                objeto_id INT NOT NULL,
                ubicacion_id INT NOT NULL,
                referencia_catastral_id INT NOT NULL,
                partidas_inmobiliarias_id INT NOT NULL,
                superficie_id INT NOT NULL,
                PRIMARY KEY (obra_id)
);


CREATE TABLE expedientes (
                expediente_id INT AUTO_INCREMENT NOT NULL,
                expediente_numero VARCHAR(25) NOT NULL,
                profesional_id INT NOT NULL,
                propietario_id INT NOT NULL,
                tarea_id INT NOT NULL,
                obra_id INT NOT NULL,
                estado_id INT NOT NULL,
		condicion_id INT NOT NULL,
                fecha_inicio DATE NOT NULL,
                fecha_cierre DATE NOT NULL,
                liquidacion DOUBLE PRECISION,
                comprobante_pago_id INT NOT NULL,
                PRIMARY KEY (expediente_id)
);


CREATE TABLE certificados (
                certificado_id INT AUTO_INCREMENT NOT NULL,
                certificado LONGBLOB,
                expediente_id INT NOT NULL,
                PRIMARY KEY (certificado_id)
);





-- 		Foreign Keys (FKS)


ALTER TABLE expedientes ADD CONSTRAINT estados_expedientes_fk
FOREIGN KEY (estado_id)
REFERENCES estados (estado_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE expedientes ADD CONSTRAINT condiciones_expedientes_fk
FOREIGN KEY (condicion_id)
REFERENCES condiciones (condicion_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE expedientes ADD CONSTRAINT comprobantes_pago_expedientes_fk
FOREIGN KEY (comprobante_pago_id)
REFERENCES comprobantes_pago (comprobante_pago_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras ADD CONSTRAINT ubicaciones_obras_fk
FOREIGN KEY (ubicacion_id)
REFERENCES ubicaciones (ubicacion_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE tareas ADD CONSTRAINT planos_tareas_fk
FOREIGN KEY (plano_id)
REFERENCES planos (plano_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE expedientes ADD CONSTRAINT tareas_expedientes_fk
FOREIGN KEY (tarea_id)
REFERENCES tareas (tarea_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras ADD CONSTRAINT superficies_obras_fk
FOREIGN KEY (superficie_id)
REFERENCES superficies (superficie_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras ADD CONSTRAINT objetos_obras_fk
FOREIGN KEY (objeto_id)
REFERENCES objetos (objeto_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras ADD CONSTRAINT tipologias_obras_fk
FOREIGN KEY (tipologia_id)
REFERENCES tipologias (tipologia_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras ADD CONSTRAINT partidas_inmobiliarias_obras_fk
FOREIGN KEY (partidas_inmobiliarias_id)
REFERENCES partidas_inmobiliarias (partidas_inmobiliarias_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras ADD CONSTRAINT referencias_catastrales_obras_fk
FOREIGN KEY (referencia_catastral_id)
REFERENCES referencias_catastrales (referencia_catastral_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE expedientes ADD CONSTRAINT profesionales_expedientes_fk
FOREIGN KEY (profesional_id)
REFERENCES profesionales (profesional_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras ADD CONSTRAINT profesionales_obras_fk
FOREIGN KEY (profesional_id)
REFERENCES profesionales (profesional_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE notas_reemplazo_profesional ADD CONSTRAINT profesionales_notas_reemplazo_profesional_fk
FOREIGN KEY (profesional_id)
REFERENCES profesionales (profesional_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE expedientes ADD CONSTRAINT propietarios_expedientes_fk
FOREIGN KEY (propietario_id)
REFERENCES propietarios (propietario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE obras ADD CONSTRAINT propietarios_obras_fk
FOREIGN KEY (propietario_id)
REFERENCES propietarios (propietario_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE expedientes ADD CONSTRAINT obras_expedientes_fk
FOREIGN KEY (obra_id)
REFERENCES obras (obra_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE certificados ADD CONSTRAINT expedientes_certificados_fk
FOREIGN KEY (expediente_id)
REFERENCES expedientes (expediente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
