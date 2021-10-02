




-- propietarios 

INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Julia','Gimenez','10-0000000-1');
INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Claudio','Diaz','22-0000000-2');
INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Leandro','Sanabria','33-0000000-3');
INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Eduardo','Antonio','44-0000000-4');
INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Sergio','Gonzalez','55-0000000-5');
INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Ricardo','Lopez','66-0000000-6');
INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Maria','Villalba','77-0000000-7');
INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Gabriel','Herrera','88-0000000-8');
INSERT INTO propietarios (propietario_nombre,propietario_apellido,propietario_cuit) VALUES ('Estefania','Urrieta','99-0000000-9');


-- profesionales

INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Ariel','Ruiz Diaz','1000');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Ariadna','Sue','1111');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Ariana','Grande','2222');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Arturo','Espinola','3333');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Arantza','Rodriguez','4444');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Aracely','Gonzalez','5555');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Aragorn','Elessar','6666');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Arejandro','Goyte','7777');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Araab','Hebreo','8888');
INSERT INTO `profesionales`(`profesional_nombre`, `profesional_apellido`, `profesional_numero_matricula`) VALUES ('Arquimedes','Siracusa','9999');


-- referencias catastrales

INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (10,10,10,10);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (11,11,11,11);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (22,22,22,22);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (33,33,33,33);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (44,44,44,44);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (55,55,55,55);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (66,66,66,66);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (77,77,77,77);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (88,88,88,88);
INSERT INTO `referencias_catastrales`(`seccion`, `chacra`, `manzana`, `parcela`) VALUES (99,99,99,99);


-- partidas inmobiliarias

INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (10001);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (11111);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (22222);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (33333);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (44444);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (55555);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (66666);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (77777);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (88888);
INSERT INTO `partidas_inmobiliarias`(`partida_inmobiliaria_numero`) VALUES (99999);


-- ubicaciones 

INSERT INTO `ubicaciones`(`localidad`, `calle`, `numero`, `barrio`) VALUES ('Posadas','Lavalle','1111','barrio1');
INSERT INTO `ubicaciones`(`localidad`, `calle`, `numero`, `barrio`) VALUES ('Posadas','Santa Catalina','2222','barrio2');
INSERT INTO `ubicaciones`(`localidad`, `calle`, `numero`, `barrio`) VALUES ('Posadas','San Martín','3333','barrio3');
INSERT INTO `ubicaciones`(`localidad`, `calle`, `numero`, `barrio`) VALUES ('Candelaria','Junín','4444','barrio4');
INSERT INTO `ubicaciones`(`localidad`, `calle`, `numero`, `barrio`) VALUES ('Candelaria','Lavalle','5555','barrio5');
INSERT INTO `ubicaciones`(`localidad`, `calle`, `numero`, `barrio`) VALUES ('Garuhapé','Bolivar','6666','barrio6');
INSERT INTO `ubicaciones`(`localidad`, `calle`, `numero`, `barrio`) VALUES ('Posadas','Alvear','7777','barrio7');
INSERT INTO `ubicaciones`(`localidad`, `calle`, `numero`, `barrio`) VALUES ('Posadas','Urquiza','8888','barrio8');





-- superficies

INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (100,0);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (111,0);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (222,0);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (333,0);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (444,0);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (555,100);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (666,200);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (777,300);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (888,400);
INSERT INTO `superficies`(`superficie_con_permiso`, `superficie_sin_permiso`) VALUES (999,500);

