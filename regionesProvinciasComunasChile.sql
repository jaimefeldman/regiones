DROP TABLE IF EXISTS regiones;
CREATE TABLE regiones (
	id		INTEGER PRIMARY KEY,
	nombre  VARCHAR(256),
	numero  VARCHAR(10)
);
CREATE INDEX regiones_idx on regiones(nombre ASC, numero ASC);



DROP TABLE IF EXISTS provincias;
CREATE TABLE provincias(
	id		INTEGER PRIMARY KEY,
	nombre  VARCHAR(256),
	idRegion INTEGER,

	FOREIGN KEY(idRegion) REFERENCES regiones(id) ON UPDATE CASCADE
);
CREATE INDEX provincias_idx on provincias(nombre ASC, idRegion ASC);



DROP TABLE IF EXISTS comunas;
CREATE TABLE comunas (
	id			INTEGER PRIMARY KEY,
	nombre  	VARCHAR(256),
	idProvincia INTEGER,
	
	FOREIGN KEY(idProvincia) REFERENCES provincias(id) ON UPDATE CASCADE
);
CREATE INDEX comunas_idx on comunas(nombre ASC, idProvincia ASC);



