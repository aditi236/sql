CREATE TABLE Student(sid VARCHAR(10), firstName VARCHAR(20), lastName VARCHAR(20),dateOfBirth DATE,gender CHAR(1),address VARCHAR(20),email VARCHAR(20),phone INTEGER(10));

INSERT INTO Student VALUES ('','Eren', 'Jaeger', '2003-02-02','M', 'Paradin Island', 'ErenJeager@gmail.com',05068801);
INSERT INTO spy VALUES ('bud','Fanny', 'Charleston', '1983-07-31','F', 'scar on cheek', 25.67);INSERT INTO spy VALUES ('freddie','John', 'Smith', '1954-09-05','M', 'one finger missing', 312.5);
mysql>INSERT INTO spy VALUES ('007','James', 'Bond', '1972-12-01','M', 'Mole on chin', 5050);


INSERT INTO spy(spyMaster VARCHAR(1), bankAccount INTEGER(9)) VALUES( 'Q', 23456);

ALTER TABLE spy ADD spyMaster VARCHAR(1); 

UPDATE spy SET spyMaster ='Q'; WHERE codeName=‘007’;UPDATE spy SET spyMaster ='Q'; WHERE codeName=‘bud’;UPDATE spy SET spyMaster ='M'; WHERE codeName=‘freddie’;

UPDATE spy SET spyMaster = 'Q' WHERE codeName=‘007’;UPDATE spy SET spyMaster = 'Q' WHERE codeName=‘bud’;UPDATE spy SET spyMaster = 'M' WHERE codeName=‘freddie’;

ALTER TABLE Student ADD PRIMARY KEY (countryName);

UPDATE Student SET phone=0506885892 WHERE firstName='Eren';


CREATE TABLE Countries(countryName VARCHAR(10), currency VARCHAR(20), VisaNeeded VARCHAR(1));
INSERT INTO Countries VALUES ('','Eren', 'Jaeger', '2003-02-02','M', 'Paradin Island', 'ErenJeager@gmail.com',05068801

INSERT INTO Countries(countryName, currency, VisaNeeded)
 values("Azerbaijan", "MANAT", "N"),
 ("China", "RENMINBI", "N"),
 ("Greece", "EURO", "Y"),
 ("India", "RUPEE", "N"),
 ("Italy","EURO", "Y"),
 ("Japan", "YEN", "Y"),
 ("Maldives", "RUFIYAA", "Y"),
 ("Nepal", "NEPALI RUPEE", "Y"),
 ("Singapore", "SINGAPORE DOLLAR", "Y"),
 ("Switzerland", "SWISS FRANC", "Y"),
 ("United Arab Emirates", "DIRHAM", "Y");
 
 UPDATE Cities
SET cityName="Mala"
WHERE countryName="Maldives";

UPDATE uservisits
SET Landmarks="Dotombori"
WHERE userName="Historia Reiss" and Ratings="4";

create table Cities(
	 cityName varchar(20) not null,
	 countryName varchar(20) not null,
	 primary key(cityName),
	 foreign key(countryName) references Countries(countryName)
	 );

 insert into Cities(cityName, countryName)
	 values("Baku", "Azerbaijan"),
	 ("Goygol", "Azerbaijan"),
	 ("Beijing", "China"),
	 ("Shaanxi", "China"),
	 ("Athens", "Greece"),
	 ("Thessaloniki", "Greece"),
	 ("Agra", "India"),
	 ("Amer", "India"),
	 ("Madurai", "India"),
	 ("Pisa", "Italy"),
	 ("Rome", "Italy"),
	 ("Osaka", "Japan"),
	 ("Tokyo", "Japan"),
	 ("Maafannu", "Maldives"),
	 ("Mala", "Maldives"),
	 ("Khumbu", "Nepal"),
	 ("Mustang", "Nepal"),
	 ("Kampong Glam", "Singapore"),
	 ("Rochor", "Singapore"),
	 ("Lucerne", "Switzerland"),
	 ("Zermatt", "Switzerland"),
	 ("Abu Dhabi", "United Arab Emirates"),
	 ("Dubai", "United Arab Emirates");
	 
	 create table Sites(
	Landmarks varchar(225) not null,
    Catagories varchar(50) not null,
	cityName varchar(20) not null,
	primary key(Landmarks),
	foreign key(CityName) references Cities(CityName)
	);
insert into sites(Landmarks, Catagories, CityName)
     values("Museum of The Future", "Museum", "Dubai")
     ,("Burj Khalifa", "Architecture", "Dubai")
     ,("Louvre", "Museum", "Abu Dhabi"),
     ("Ferrari World", "Park", "Abu Dhabi"),
     ("Lake Lucerne", "Nature", "Lucerne"),
     ("Mount Pilatus", "Nature", "Lucerne"),
     ("Gornegrat", "Nature", "Zermatt"),
     ("Mount Matterhorn", "Nature", "Zermatt"),
     ("Tokyo Tower", "Architecture", "Tokyo"),
     ("Disneyland", "Park", "Tokyo"),
     ("Universal Studios", "Park", "Osaka"),
     ("Dotombori", "Cuisine", "Osaka"),
     ("Sultan Park", "Park", "Maafannu"),
     ("Tsunami Monument", "Historical", "Maafannu"),
     ("National Museum", "Museum", "Male"),
     ("Sinamale Bridge", "Architecture", "Male"),
	 ("Acropolis of Athens", "Architecture", "Athens"),
     ("Alexander the Great Garden", "Park", "Thessaloniki"),
     ("White Tower", "Museum", "Thessaloniki"),
     ("Odeon of Herodes Atticus", "Architecture", "Athens"),
     ("Heydar Aliyev Center", "Architecture", "Baku"),
     ("Philarmonia Garden", "Park", "Baku"),
     ("Lake Goygol", "Park", "Goygol"),
     ("Colosseum", "Architecture", "Rome"),
     ("Pane e Salame", "Cuisine", "Rome"),
     ("Tower of Pisa", "Architecture", "Pisa"),
     ("Piazza Dei Miracoli", "Architecture", "Pisa"),
     ("Emperor Qinshihuangs Mausoleum", "Museum", "Shaanxi"),
     ("Mengshan Giant Buddha", "Architecture", "Shaanxi"),
     ("Temple of Heaven", "Architecture", "Beijing"),
     ("Kings Joy", "Cuisine", "Beijing"),
     ("Gardens by The Bay", "Park", "Kampong Glam"),
     ("Cloud Forest", "Park", "Kampong Glam"),
	 ("Singapore Zoo", "Park", "Rochor"),
     ("Marina Bay Sands", "Architecture", "Rochor"),
     ("Taj Mahal", "Architecture", "Agra"),
     ("Agra Fort", "Architecture", "Agra"),
     ("Amber Palace", "Architecture", "Amer"),
     ("Meenakshi Amman Temple", "Temple", "Madurai"),
     ("Everest Base Camp", "Architecture", "Khumbu"),
     ("Shree Muktinath Temple", "Temple", "Mustang");


create table User(
	 userName varchar(225) not null,
	 Email varchar(225) not null,
	 primary key(userName)
	 );
	 
	 insert into User(userName, Email)
     values("Eren Jaeger", "eren.jeager121@gmail.com"),
     ("Mikasa Ackermann", "eren.mikasa121@gmail.com"),
     ("Erwin Smith", "e.smith@gmail.com"),
     ("Ymir Fritz", "founder.ymir101@gmail.com"),
     ("Armin Arlert", "arlert.armin90@gmail.com"),
     ("Levi Ackermann", "levi.ackerman160n@gmail.com"),
     ("Annie Leonhart", "annie_armin@gmail.com"),
     ("Reiner Braun", "reiner_titan@gmail.com"),
     ("Pieck Finger", "cart.finger@gmail.com"),
     ("Zeke Jaeger", "zeke.incel.jaeger@gmail.com"),
     ("Sasha Blause", "sashablause@gmail.com"),
     ("Connie Springer", "conniespringer@gmail.com"),
     ("Jean Kirstein", "jean_kirstein@gmail.com"),
     ("Berthold Hoover", "hooverxleonhart@gmail.com"),
     ("Hanger Zoe", "titansloverzoe@gmail.com"),
     ("Historia Reiss", "angel.reiss@gmail.com"),
     ("Gabi Braun", "braun_x_gabi@gmail.com"),
     ("Falco Grice", "falcon.grice@gmail.com"),
     ("Girisha Jaeger", "girisha.jaeger"),
     ("Yelena Belova", "belova.jaegerist@gmail.com");
	 
	 
	insert into uservisits(userName, Landmarks, Rating)
     values("Eren Jaeger", "Acropolis of Athens", 5),
	 ("Mikasa Ackermann", "Acropolis of Athens", 5),
     ("Mikasa Ackermann", "Alexander the Great Garden", 5),
	 ("Ymir Fritz", "Alexander the Great Garden", 5),
	 ("Erwin Smith", "Alexander the Great Garden", 5),
	 ("Yelena Belova", "Alexander the Great Garden", 5),
	 ("Levi Ackermann", "Alexander the Great Garden", 5),
	 ("Erwin Smith", "White Tower", 5),
     ("Ymir Fritz", "Odeon of Herodes Atticus", 4),
     ("Armin Arlert", "Philarmonia Garden", 5),
     ("Levi Ackermann", "Heydar Aliyev Center", 3),
     ("Annie Leonhart", "Lake Goygol", 4),
     ("Reiner Braun", "Colosseum", 4),
     ("Pieck Finger", "Pane e Salame", 5),
	 ("Zeke Jaeger", "Tower of Pisa", 5),
     ("Sasha Blause", "Piazza Dei Miracoli", 3),
     ("Connie Springer", "Emperor Qinshihuangs Mausoleum", 4),
     ("Berthold Hoover", "Temple of Heaven", 2),
     ("Hange Zoe", "Kings Joy", 4),
	 ("Jean Kirstein", "Mengshan Giant Buddha", 5),
     ("Historia Reiss", "Gardens by The Bay", 5),
     ("Falco Grice", "Singapore Zoo", 4),
	 ("Falco Grice", "King's Joy", 4),
     ("Girisha Jaeger", "Cloud Forest", 5),
     ("Yelena Belova", "Taj Mahal", 5),
     ("Eren Jaeger", "Agra Fort", 3),
     ("Mikasa Ackermann", "Amber Palace", 3),
     ("Erwin Smith", "Meenakshi Amman Temple", 3),
     ("Ymir Fritz", "Everest Base Camp", 5),
     ("Armin Arlert", "Shree Muktinath Temple", 5),
     ("Annie Leonhart", "Burj Khalifa", 5),
     ("Reiner Braun", "Ferrari World", 3),
     ("Pieck Finger", "Louvre", 2),
	 ("Pieck Finger", "Museum of the Future", 5),
     ("Zeke Jaeger", "Lake Lucerne", 5),
     ("Sasha Blause", "Mount Pilatus", 4),
     ("Connie Springer", "Mount Matterhorn", 3),
     ("Jean Kirstein", "Gornegrat", 5),
     ("Berthold Hoover", "Tokyo Tower", 2),
	 ("Berthold Hoover", "Tokyo Disneyland", 4),
     ("Hange Zoe", "Universal Studios", 2),
     ("Historia Reiss", "Dotombori", 4),
     ("Gabi Braun", "Sinamale Bridge", 5),
	 ("Gabi Braun", "Marina Bay Sands", 5),
     ("Falco Grice", "National Museum", 3),
     ("Girisha Jaeger", "Sultan Park", 2),
     ("Yelena Belova", "Tsunami Monument", 2);
	 
	 create table UserVisits(
	 userName varchar(225) not null,
	 Landmarks varchar(225) not null,
	 Rating int,
	foreign key(userName) references User(userName),
	 foreign key(Landmarks) references sites(Landmarks)
	 );
	 
	 select sites.cityName as 'Cities' from sites where catagories ='museum';  //returns cities with museum landmarks
     select cities.cityName as 'Cities' from cities
    INNER JOIN Countries ON Cities.countryName=Countries.countryName
    where VisaNeeded='N';
  
  
  
SELECT *
FROM Cities as CityName, Countries 
WHERE VisaNeeded='N'

 
 Select cityName,countryName
    From Cities
    Left Join Countries On Cities.countryName = Countries.countryName
    Where not exists (select Landmarks,Catagories from Sites where Landmarks='Cloud Forest' AND Sites.cityName = Cities.cityName)
	
	select Landmarks from UserVisits Ordered by Rating DESC where userName='Mikasa Ackermann'
	select Landmarks from (
  select Landmarks from UserVisits order by Rating desc) as Landmarks
where userName='Mikasa Ackermann';


select distinct Sites.cityName,Sites.Catagories,countries.countryName,Countries.VisaNeeded from Sites JOIN Cities ON Sites.cityName = Cities.cityName JOIN Countries ON Cities.countryName = Countries.countryName where Landmarks='Taj Mahal';