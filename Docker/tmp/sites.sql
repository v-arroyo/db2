DROP TABLE IF EXISTS SITES;

CREATE TABLE SITES (
  SITE_ID INTEGER NOT NULL PRIMARY KEY,
  NAME VARCHAR(200) NOT NULL,
  SOURCES VARCHAR(200) NOT NULL,
  LATITUDE DECIMAL NOT NULL,
  LONGITUDE DECIMAL NOT NULL,
  REGION VARCHAR(30) NOT NULL
);

INSERT INTO SITES
 VALUES (1,'El-Kurru','Dunham, 1950; Kendall, 1999',18.4093,31.7711,'4th cataract'),
	(2,'Nuri','Dunham, 1955',18.5643,31.9168,'4th cataract'),
	(3,'Jebel Barkal','Berenguer, 1999; Berenguer, 2001; Dunham 1957',18.5367,31.8284,'4th cataract'),
	(4,'Meroe West','Dunham, 1963',16.9383,33.7492,'meroe region'),
	(5,'Meroe South','Dunham, 1957; Dunham, 1963',16.9383,33.7492,'meroe region'),
	(6,'Missiminia','Vila, 1980',20.802,30.3452,'north upper nubia'),
	(7,'Mirgissa','Geus, 1975',21.8114,31.1743,'lower nubia'),
	(8,'Sanam','Lohwasser, 2012; Griffith, 1923',18.4841,31.8197,'4th cataract'),
	(9,'Qustul','Williams, 1990',22.2545,31.5702,'lower nubia'),
	(10,'Debeira 176','Säve-Söderbergh, 1989',22.0752,31.3834,'lower nubia'),
	(11,'Hillat el-Arab','Vincentelli, 2006',18.5068,31.8155,'4th cataract');
