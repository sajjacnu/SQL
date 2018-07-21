
# Droping of table if any exits
DROP TABLE IF EXISTS HW_Week2_Video.tblvideo;
DROP TABLE IF EXISTS HW_Week2_Video.tblreview;

#Unique_ID	Length	Title	URL

CREATE TABLE HW_Week2_Video.tblvideo (
    Unique_ID int PRIMARY KEY,
	Length time,
	Title varchar(100) NOT NULL,
	URL varchar(255)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/tblvideo.csv' 
INTO TABLE HW_Week2_Video.tblvideo 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

#Name	Rating	Review	Unique_ID


CREATE TABLE HW_Week2_Video.tblreview (
    Customer char(50),
	Rating int(1) NOT NULL,
	Review char(25) NOT NULL,
	Video_ref int references  Unique_ID
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/tblreview.csv' 
INTO TABLE HW_Week2_Video.tblreview 
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;