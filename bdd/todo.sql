CREATE DATABASE todolist;

USE todolist;

#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        user_id  Int  Auto_increment  NOT NULL ,
        password Varchar (255) NOT NULL ,
        mail     Varchar (255) NOT NULL
	,CONSTRAINT user_AK UNIQUE (mail)
	,CONSTRAINT user_PK PRIMARY KEY (user_id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: list
#------------------------------------------------------------

CREATE TABLE list(
        list_id     Int  Auto_increment  NOT NULL ,
        description Varchar (255) NOT NULL ,
        edit        Bool NOT NULL ,
        user_id     Int NOT NULL
	,CONSTRAINT list_PK PRIMARY KEY (list_id)

	,CONSTRAINT list_user_FK FOREIGN KEY (user_id) REFERENCES user(user_id)
)ENGINE=InnoDB;