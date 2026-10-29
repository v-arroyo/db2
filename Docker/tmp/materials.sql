DROP TABLE IF EXISTS MATERIALS;

CREATE TABLE MATERIALS (
	MATERIAL_ID INTEGER NOT NULL,
  	MATERIAL_NAME VARCHAR(20) NOT NULL,
  	MATERIAL_LOCAL BOOLEAN NOT NULL,
  	MATERIAL_IMPORTED BOOLEAN NOT NULL,
  	MATERIAL_SOURCE1 VARCHAR(100) NOT NULL,
  	MATERIAL_SOURCE2 VARCHAR(100),
  	MATERIAL_SOURCE3 VARCHAR(100),
  	MATERIAL_REFERENCE VARCHAR(200),
  	PRIMARY KEY (MATERIAL_ID)
);



INSERT INTO MATERIALS VALUES (1,'agate',1,1,'nile valley','eastern desert','sinai','Harrell, 2024, 759'),(2,'amazonite',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 758'),(3,'amethyst',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 759'),(4,'basalt',0,1,'upper egypt',NULL,NULL,'Harrell, 2024, 505'),(5,'beryl',0,1,'eastern desert','asia',NULL,'Harrell, 2024, 758'),(6,'bronze',1,1,'lower nubia',NULL,NULL,'Harrell, 2024, 929'),(7,'carnelian',1,1,'lower nubia','eastern desert','nile valley','Harrell, 2024, 759'),(8,'chalcedony',1,1,'lower nubia',NULL,NULL,'Harrell, 2024, 759'),(9,'electrum',1,0,'lower nubia',NULL,NULL,'Klemm & Klemm, 2013, 341-598'),(10,'faience',1,1,'manufacturing',NULL,NULL,'Harrell, 2024, 385'),(11,'glass',1,0,'manufacturing',NULL,NULL,'Harrell, 2024, 385'),(12,'gold',1,0,'lower nubia',NULL,NULL,'Klemm & Klemm, 2013, 341-598'),(13,'granite',1,1,'lower nubia',NULL,NULL,'Harrell, 2024, 505'),(14,'granodiorite',1,0,'lower nubia',NULL,NULL,'Harrell, 2024, 505'),(15,'haematite',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 758'),(16,'ivory',1,0,'sub-saharan africa',NULL,NULL,'Shochat, 2025'),(17,'jasper',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 760'),(18,'lapis',0,1,'asia',NULL,NULL,'Harrell, 2024, 758'),(19,'limestone',0,1,'nile valley',NULL,NULL,'Harrell, 2024, 506'),(20,'limonite',1,1,'upper egypt','meroe region',NULL,'Harrell, 2024, 948'),(21,'malachite',0,1,'eastern desert','sinai','asia','Harrell, 2024, 758'),(22,'marble',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 506'),(23,'mother-of-pearl',1,1,'red sea',NULL,NULL,NULL),(24,'obsidian',0,1,'asia','punt',NULL,'Harrell, 2024, 759'),(25,'onyx',1,1,'lower nubia','nile valley',NULL,'Harrell, 2024, 759'),(26,'porphyry',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 505'),(27,'quartz',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 759'),(28,'rock crystal',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 759'),(29,'sandstone',0,1,'nile valley',NULL,NULL,'Harrell, 2024, 506'),(30,'serpentinite',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 506-507'),(31,'silver',1,1,'lower nubia','eastern desert',NULL,'Harrell, 2024, 875-878'),(32,'steatite',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 507'),(33,'travertine',0,1,'eastern desert',NULL,NULL,'Harrell, 2024, 507'),(34,'zeolite',1,1,'eastern sudan',NULL,NULL,'Andrew, 1951');
