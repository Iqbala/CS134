CREATE TABLE COUNTRY
        	(Name         	VARCHAR(14)         	NOT NULL,
        	PRIMARY KEY (Name));
CREATE TABLE State
        	(StateName	VARCHAR(14)         	NOT NULL,
        	Nickname    	VARCHAR(201),                  	
        	GDP             	INT                          	NOT NULL,  	
        	StateArea    	INT                          	NOT NULL,
        	StatePop     	INT                          	NOT NULL,
        	StateCounty	VARCHAR(20)         	NOT NULL,  	 
        	StateCapitol    VARCHAR(20)         	NOT NULL,
        	Racial_makeup VARCHAR(10)        NOT NULL,
        	Ancestral_makeup VARCHAR(15)  	NOT NULL,
        	Religions     	VARCHAR(10)         	NOT NULL,
        	CountryName  VARCHAR(14)         	NOT NULL,
        	PRIMARY KEY (StateName),
        	FOREIGN KEY (CountryName) REFERENCES COUNTRY(Name));
CREATE TABLE Border
        	(BorderStateTo   VARCHAR(14)         NOT NULL,
	BorderStateWith   VARCHAR(14)       NOT NULL,
        	BorderLength  INT             	        	   NOT NULL,
        	PRIMARY KEY (BorderStateTo, BorderStateWith),
        	FOREIGN KEY (BorderStateTo, BorderStateWith) REFERENCES State (StateName));
CREATE TABLE  Religion
        	(StateReligions       	VARCHAR(10) NOT NULL,  	
        	Religion_name       	VARCHAR(10) NOT NULL,
        	PRIMARY KEY (StateReligions),
        	FOREIGN KEY (StateReligions) REFERENCES State(Religions));
CREATE TABLE Ancestry
        	(StateAncestry                    	VARCHAR(15) NOT NULL,
        	Ancestry_name       	VARCHAR(15) NOT NULL,
        	PRIMARY KEY (Ancestral_makeup),
        	FOREIGN KEY (StateAncestry) REFERENCES State(Ancestral_makeup));
CREATE TABLE Race
        	(StateRaces	VARCHAR(10)         	NOT NULL,
        	Race_name 	VARCHAR(10)         	NOT NULL,
	PRIMARY KEY (StateRaces),
	FOREIGN KEY (StateRaces) REFERENCES State(Racial_makeup)); 
CREATE TABLE CapitolCity
	(CapitolName		VARCHAR(20)	NOT NULL, 
	CapitolPop		INT			NOT NULL, 
	Longitude		INT			NOT NULL, 
	Latitude		INT			NOT NULL, 
	PRIMARY KEY (CapitolName), 
	FOREIGN KEY (CapitolName) REFERENCES State(StateCapitol)); 
CREATE TABLE County
	(CountyName		VARCHAR(20)	NOT NULL, 
	CountyLakes		VARCHAR(20)	NOT NULL,
	CountyRivers		VARCHAR(20)	NOT NULL, 
	CountySeas		VARCHAR(20)	NOT NULL, 
	PRIMARY KEY (CountyNames),
	FOREIGN KEY (CountyLakes) REFERENCES Lake (LakeName),
	FOREIGN KEY (CountyRivers) REFERENCES River(RiverName), 
	FOREIGN KEY (CountySeas) REFERENCES Sea(SeaName));
