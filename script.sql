DROP DATABASE IF EXISTS SQLindividual_db

CREATE DATABASE SQLindividual_db;

use SQLindividual_db;


CREATE TABLE IF NOT EXISTS categories (
     id int(11) NOT NULL AUTO_INCREMENT,
     name varchar(70) NOT NULL
    FOREIGN KEY id,
);

INSERT INTO categories VALUES (1,'Mathematics'),(2,'grammar'),(3,'history'),(4,'Computing'),(5,'Geography'),(6,'Biology'),(7,'Accounting'),(8,'Physical'),(9,'Chemistry'),(10,'English');

DROP TABLE IF EXISTS `users`;

CREATE TABLE  users (
  id int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  PRIMARY KEY (id)

) ;

INSERT INTO users VALUES (1,'Gabriel Kohen','gabrielk@hotmail.com'),(2,'Tobias Tawil','tobiw@hotmail.com'),(3,'Fleric Klochnic','fleric@gmail.com'),(4,'tamara martinez','matirnezT@hotmail.com'),(5,'beja gonzales','benja@hotmail.com'),(6,'martin lopez','lopez@gmail.com'),(7,'daniel gonzales','danielg@hotmail.com'),(8,'tatiana gonzales','tati@hotmail.com'),(6,'laura levi','laulevi@gmail.com')



CREATE TABLE categories_notes  (
  id int(11) NOT NULL AUTO_INCREMENT,
  note_id int(11) NOT NULL,
  category_id int(11) NOT NULL,
  PRIMARY KEY (id),
   FOREIGN KEY (note_id) REFERENCES  notes (id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
) 


INSERT INTO categories_notes VALUES (1,6),(2,3),(4,5),(6,2),(6,7),(9,4),(4,5),(6,7)

DROP TABLE IF EXISTS notes;

CREATE TABLE  notes (
  id  int(11) NOT NULL AUTO_INCREMENT,
   user_id int(11) NOT NULL,
   title varchar(100) NOT NULL,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO  notes VALUES (1,1,'Levantarme','Meditar','2021-09-27 17:56:06',NULL,0,10),(2,7,'Desayunar','Desayunar bien','2021-09-27 17:56:53',NULL,0,3),(3,5,'Estudiar','Estudiar sequelize','2021-09-27 17:57:54',NULL,0,3),(4,9,'Dormir','Dormir una siesta','2021-09-27 17:58:27',NULL,0,5),(5,2,'Correr','Salir al parque a correr','2021-09-27 17:59:27',NULL,0,5),(6,6,'Estirar','Hacer yoga','2021-09-27 17:59:28',NULL,0,2),(7,3,'Cenar','Salir a cenar','2021-09-27 18:00:29',NULL,0,6),(8,4,'Serie','Ver vikings','2021-09-27 18:00:29',NULL,0,4),(9,10,'llamar','llamar a un amigo ','2021-09-27 18:00:54',NULL,0,8),(10,8,'Perro','Sacar a pasear al perro','2021-09-27 18:01:33',NULL,0,9);




