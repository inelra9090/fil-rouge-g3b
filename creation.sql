DROP TABLE Participe;
DROP TABLE InTeam;
DROP TABLE Competition;
DROP TABLE Individual;
DROP TABLE Team;
DROP TABLE Bettors;
DROP TABLE Bet;
DROP TABLE Participe;
DROP TABLE InTeam;
DROP TABLE Competition;
DROP TABLE Individual;
DROP TABLE Team;
DROP TABLE Bettors;
DROP TABLE Bet;

CREATE TABLE Competition (
	id   INTEGER     NOT NULL AUTO_INCREMENT,
	name VARCHAR(60) NOT NULL,
	
	constraint pk_competition PRIMARY KEY (id)
);

CREATE TABLE Individual (
	id   INTEGER     NOT NULL AUTO_INCREMENT,
	name VARCHAR(60) NOT NULL,
	CONSTRAINT pk_indiv PRIMARY KEY (id)

);

CREATE TABLE Team (
	id   INTEGER NOT NULL AUTO_INCREMENT,
	name VARCHAR(60),

	CONSTRAINT pk_team PRIMARY KEY (id)
);

create table InTeam (
	individual_id INTEGER NOT NULL,
	team_id       INTEGER NOT NULL,

	CONSTRAINT pk_inteam PRIMARY KEY (individual_id, team_id),

	CONSTRAINT fk_indiv  FOREIGN KEY (individual_id) REFERENCES Individual(id),
	CONSTRAINT fk_team   FOREIGN KEY (team_id)       REFERENCES Team(id)
);

CREATE TABLE Bettors (
	id        INTEGER     NOT NULL AUTO_INCREMENT,
    username  VARCHAR(30) NOT NULL,
	password  VARCHAR(30) NOT NULL,
   	birthdate DATE        NOT NULL,
   	balance   INTEGER     NOT NULL DEFAULT 0,

   	CONSTRAINT pk_bettors PRIMARY KEY (id)
);

CREATE TABLE Bet (
	id_bettor      INTEGER NOT NULL,
	id_competitor  INTEGER NOT NULL,
	id_competition INTEGER NOT NULL,
	amount_bet     INTEGER NOT NULL,
	ranking        INTEGER,

   	CONSTRAINT pk_bet        PRIMARY KEY (id_bettor, id_competitor, id_competition),

   	CONSTRAINT fk_bettor     FOREIGN KEY (id_bettor)      REFERENCES Bettors(id),
   	CONSTRAINT fk_competitor FOREIGN KEY (id_competitor)  REFERENCES Individual(id)
   	CONSTRAINT fk_competiton FOREIGN KEY (id_competition) REFERENCES Competition(id),
);

CREATE TABLE InCompetition (
	id_participant INTEGER NOT NULL,
	id_competition INTEGER NOT NULL,
	ranking        INTEGER,
	team_sport     BOOLEAN NOT NULL,

	PRIMARY KEY (id_participant, id_competition),
	/*CONSTRAINT fk_participant FOREIGN KEY (id_participant) REFERENCES Individual(individual_id),*/
	CONSTRAINT fk_competition FOREIGN KEY (id_competition) REFERENCES Competition(id)
);
