CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY,  
    owner VARCHAR(45),
    species VARCHAR(45),
    gender ENUM('F', 'M', 'X') NOT NULL,
    birth DATE,
    death DATE
);

CREATE TABLE petEvent (
    petname VARCHAR(20),
    eventdate DATE,
    eventtype VARCHAR(15),
    remark VARCHAR(255),
    PRIMARY KEY (petname, eventdate),
    FOREIGN KEY (petname) REFERENCES petPet(petname)  
);

SHOW TABLES;
DESC petPet;
DESC petEvent;
