CREATE TABLE Centuries (
  S_No INT,
  Score INT,
  Dismissed TEXT,
  Captain TEXT,
  Player_of_the_match TEXT,
  Agains TEXT,
  Position INT,
  Innings INT,
  Test INT,
  Strike_Rate NUMERIC,
  Venue TEXT,
  City TEXT,
  H_A TEXT,
  Date  DATE,
  Result TEXT
);

INSERT INTO Centuries VALUES
	(1,119,'No','No','Yes','England',6,4,2,NULL,'Old Trafford','Manchester','Away','08-09-90','Drawn'),
	(2,148,'No','No','No','Australia',6,2,3,NULL,'Sydney Cricket Ground','Sydney','Away','01-02-92','Drawn'),
	(3,114,'Yes','No','No','Australia',4,2,5,NULL,'WACA Ground','Perth','Away','02-01-92','Lost'),
	(4,111,'Yes','No','No','South Africa',4,2,2,NULL,'Wanderers Stadium','Johannesburg','Away','11/26/1992','Drawn'),
	(5,165,'Yes','No','Yes','England',4,1,2,NULL,'M. A. Chidambaram Stadium','Chennai','Home','02-11-93','Won'),
	(6,104,'No','No','No','Sri Lanka',4,3,2,NULL,'Sinhalese Sports Club Ground','Colombo','Away','7/27/1993','Won'),
	(7,142,'Yes','No','No','Sri Lanka',4,1,1,NULL,'K. D. Singh Babu Stadium','Lucknow','Home','1/18/1994','Won'),
	(8,110,'Yes','No','Yes','Australia',2,1,NULL,84.61,'R. Premadasa Stadium','Colombo','Neutral','09-09-94','Won'),
	(9,115,'Yes','No','Yes','New Zealand',2,2,NULL,84.55,'IPCL Sports Complex Ground','Vadodara','Home','10/28/1994','Won'),
	(10,105,'Yes','No','No','West Indies',2,1,NULL,78.35,'Sawai Mansingh Stadium','Jaipur','Home','11-11-94','Won'),
	(11,179,'Yes','No','No','West Indies',4,1,2,NULL,'Vidarbha Cricket Association Ground','Nagpur','Home','12-01-94','Drawn'),
	(12,112,'No','No','Yes','Sri Lanka',2,2,NULL,104.67,'Sharjah Cricket Association Stadium','Sharjah','Neutral','04-09-95','Won'),
	(13,127,'No','No','Yes','Kenya',2,2,NULL,92.02,'Barabati Stadium','Cuttack','Home','2/18/1996','Won'),
	(14,137,'Yes','No','No','Sri Lanka',2,1,NULL,100,'Feroz Shah Kotla Ground','New Delhi','Home','03-02-96','Lost'),
	(15,100,'Yes','No','No','Pakistan',2,1,NULL,90.09,'Padang','Singapore','Neutral','04-05-96','Lost'),
	(16,118,'Yes','No','Yes','Pakistan',2,1,NULL,84.28,'Sharjah Cricket Association Stadium','Sharjah','Neutral','4/15/1996','Won'),
	(17,122,'Yes','No','No','England',4,3,1,NULL,'Edgbaston','Birmingham','Away','06-06-96','Lost'),
	(18,177,'Yes','No','No','England',4,1,3,NULL,'Trent Bridge','Nottingham','Away','07-04-96','Drawn'),
	(19,110,'Yes','Yes','No','Sri Lanka',2,1,NULL,79.71,'R. Premadasa Stadium','Colombo','Away','8/28/1996','Lost'),
	(20,114,'Yes','Yes','Yes','South Africa',1,1,NULL,90.47,'Wankhede Stadium','Mumbai','Home','12/14/1996','Won'),
	(21,169,'Yes','Yes','No','South Africa',5,2,2,NULL,'Newlands Cricket Ground','Cape Town','Away','01-02-97','Lost'),
	(22,104,'Yes','Yes','Yes','Zimbabwe',1,1,NULL,107.21,'Willowmoore Park','Benoni','Neutral','02-09-97','Won'),
	(23,117,'Yes','Yes','Yes','New Zealand',2,2,NULL,85.4,'M. Chinnaswamy Stadium','Bangalore','Home','5/14/1997','Won'),
	(24,143,'Yes','Yes','No','Sri Lanka',4,1,1,NULL,'R. Premadasa Stadium','Colombo','Away','08-02-97','Drawn'),
	(25,139,'Yes','Yes','No','Sri Lanka',4,2,2,NULL,'Sinhalese Sports Club Ground','Colombo','Away','08-09-97','Drawn'),
	(26,148,'Yes','Yes','No','Sri Lanka',5,1,3,NULL,'Wankhede Stadium','Mumbai','Home','12-03-97','Drawn'),
	(27,155,'No','No','Yes','Australia',4,3,1,NULL,'M. A. Chidambaram Stadium','Chennai','Home','03-06-98','Won'),
	(28,177,'Yes','No','No','Australia',4,1,3,NULL,'M. Chinnaswamy Stadium','Bangalore','Home','3/25/1998','Lost'),
	(29,100,'Yes','No','Yes','Australia',2,2,NULL,112.35,'Green Park Stadium','Kanpur','Home','04-07-98','Won'),
	(30,143,'Yes','No','Yes','Australia',2,2,NULL,109.16,'Sharjah Cricket Association Stadium','Sharjah','Neutral','4/22/1998','Lost'),
	(31,134,'Yes','No','Yes','Australia',2,2,NULL,102.29,'Sharjah Cricket Association Stadium','Sharjah','Neutral','4/24/1998','Won'),
	(32,100,'No','No','Yes','Kenya',2,2,NULL,97.08,'Eden Gardens','Kolkata','Home','5/31/1998','Won'),
	(33,128,'Yes','No','Yes','Sri Lanka',2,1,NULL,97.7,'R. Premadasa Stadium','Colombo','Away','07-07-98','Won'),
	(34,127,'No','No','Yes','Zimbabwe',2,2,NULL,97.69,'Queens Sports Club','Bulawayo','Away','9/26/1998','Won'),
	(35,141,'Yes','No','Yes','Australia',2,1,NULL,110.15,'Bangabandhu National Stadium','Dhaka','Neutral','10/28/1998','Won'),
	(36,118,'No','No','Yes','Zimbabwe',2,2,NULL,105.35,'Sharjah Cricket Association Stadium','Sharjah','Neutral','11-08-98','Won'),
	(37,124,'No','No','Yes','Zimbabwe',2,2,NULL,134.78,'Sharjah Cricket Association Stadium','Sharjah','Neutral','11/13/1998','Won'),
	(38,113,'Yes','No','No','New Zealand',5,3,2,NULL,'Basin Reserve','Wellington','Away','12/26/1998','Lost'),
	(39,136,'Yes','No','Yes','Pakistan',4,4,1,NULL,'M. A. Chidambaram Stadium','Chennai','Home','1/28/1999','Lost'),
	(40,124,'No','No','No','Sri Lanka',4,3,2,NULL,'Sinhalese Sports Club Ground','Colombo','Away','2/24/1999','Drawn'),
	(41,140,'No','No','Yes','Kenya',4,1,NULL,138.61,'County Ground','Bristol','Neutral','5/23/1999','Won'),
	(42,120,'Yes','Yes','No','Sri Lanka',1,1,NULL,85.1,'Sinhalese Sports Club Ground','Colombo','Away','8/29/1999','Won'),
	(43,126,'No','Yes','No','New Zealand',4,3,1,NULL,'Punjab Cricket Association Stadium','Mohali','Home','10-10-99','Drawn'),
	(44,217,'Yes','Yes','Yes','New Zealand',4,1,3,NULL,'Sardar Patel Stadium','Ahmedabad','Home','10/29/1999','Drawn'),
	(45,186,'No','Yes','Yes','New Zealand',2,1,NULL,124,'Lal Bahadur Shastri Stadium','Hyderabad','Home','11-08-99','Won'),
	(46,116,'Yes','Yes','Yes','Australia',4,2,2,NULL,'Melbourne Cricket Ground','Melbourne','Away','12/26/1999','Lost'),
	(47,122,'Yes','No','Yes','South Africa',2,2,NULL,88.4,'IPCL Sports Complex Ground','Vadodara','Home','3/17/2000','Won'),
	(48,101,'Yes','No','Yes','Sri Lanka',2,1,NULL,72.14,'Sharjah Cricket Association Stadium','Sharjah','Neutral','10/20/2000','Lost'),
	(49,122,'Yes','No','No','Zimbabwe',4,2,1,NULL,'Feroz Shah Kotla Ground','New Delhi','Home','11/18/2000','Won'),
	(50,201,'No','No','No','Zimbabwe',4,1,2,NULL,'Vidarbha Cricket Association Ground','Nagpur','Home','11/25/2000','Drawn'),
	(51,146,'Yes','No','No','Zimbabwe',2,1,NULL,95.42,'Barkatullah Khan Stadium','Jodhpur','Home','12-08-00','Lost'),
	(52,126,'Yes','No','No','Australia',4,2,3,NULL,'M. A. Chidambaram Stadium','Chennai','Home','3/18/2001','Won'),
	(53,139,'Yes','No','Yes','Australia',2,1,NULL,111.2,'Nehru Stadium','Indore','Home','3/31/2001','Won'),
	(54,122,'No','No','Yes','West Indies',2,2,NULL,93.12,'Harare Sports Club','Harare','Neutral','07-04-01','Won'),
	(55,101,'Yes','No','No','South Africa',2,1,NULL,78.29,'New Wanderers Stadium','Johannesburg','Away','10-05-01','Lost'),
	(56,146,'Yes','No','Yes','Kenya',2,1,NULL,110.6,'Boland Park','Paarl','Neutral','10/24/2001','Won'),
	(57,155,'Yes','No','No','South Africa',4,1,1,NULL,'Goodyear Park','Bloemfontein','Away','11-03-01','Lost'),
	(58,103,'Yes','No','No','England',4,2,2,NULL,'Sardar Patel Stadium','Ahmedabad','Home','12-11-01','Drawn'),
	(59,176,'Yes','No','No','Zimbabwe',4,2,1,NULL,'Vidarbha Cricket Association Ground','Nagpur','Home','2/21/2002','Won'),
	(60,117,'Yes','No','No','West Indies',4,1,2,NULL,'Queen''s Park Oval','Port of Spain','Away','4/19/2002','Won'),
	(61,105,'No','No','No','England',4,1,NULL,97.22,'Riverside Ground','Chester-le-Street','Away','07-04-02','N/R'),
	(62,113,'Yes','No','Yes','Sri Lanka',4,1,NULL,110.78,'County Ground','Bristol','Neutral','07-11-02','Won'),
	(63,193,'Yes','No','No','England',4,1,3,NULL,'Headingley','Leeds','Away','8/22/2002','Won'),
	(64,176,'Yes','No','Yes','West Indies',4,3,3,NULL,'Eden Gardens','Kolkata','Home','10/30/2002','Drawn'),
	(65,152,'Yes','No','Yes','Namibia',2,1,NULL,100.66,'City Oval','Pietermaritzburg','Neutral','2/23/2003','Won'),
	(66,100,'Yes','No','Yes','Australia',2,1,NULL,84.03,'Roop Singh Stadium','Gwalior','Home','10/26/2003','Won'),
	(67,102,'Yes','No','No','New Zealand',2,1,NULL,112.08,'Lal Bahadur Shastri Stadium','Hyderabad','Home','11/15/2003','Won'),
	(68,241,'No','No','Yes','Australia',4,1,4,NULL,'Sydney Cricket Ground','Sydney','Away','01-02-04','Drawn'),
	(69,141,'Yes','No','Yes','Pakistan',2,2,NULL,104.44,'Rawalpindi Cricket Stadium','Rawalpindi','Away','3/16/2004','Lost'),
	(70,194,'No','No','No','Pakistan',4,1,1,NULL,'Multan Cricket Stadium','Multan','Away','3/28/2004','Won'),
	(71,248,'No','No','No','Bangladesh',4,2,1,NULL,'Bangabandhu National Stadium','Dhaka','Away','12-10-04','Won'),
	(72,123,'Yes','No','No','Pakistan',2,1,NULL,94.61,'Sardar Patel Stadium','Ahmedabad','Home','04-12-05','Lost'),
	(73,109,'Yes','No','No','Sri Lanka',4,1,2,NULL,'Feroz Shah Kotla Ground','New Delhi','Home','12-10-05','Won'),
	(74,100,'Yes','No','No','Pakistan',2,1,NULL,88.49,'Arbab Niaz Stadium','Peshawar','Away','02-06-06','Lost'),
	(75,141,'No','No','No','West Indies',2,1,NULL,95.27,'Kinrara Academy Oval','Kuala Lumpur','Neutral','9/14/2006','Lost'),
	(76,100,'No','No','No','West Indies',4,1,NULL,131.57,'IPCL Sports Complex Ground','Vadodara','Home','1/31/2007','Won'),
	(77,101,'Yes','No','No','Bangladesh',4,1,1,NULL,'Bir Shrestha Shahid Ruhul Amin Stadium','Chittagong','Away','5/18/2007','Drawn'),
	(78,122,'No','No','No','Bangladesh',4,1,2,NULL,'Sher-e-Bangla National Stadium','Mirpur','Away','5/25/2007','Won'),
	(79,154,'No','No','No','Australia',4,2,2,NULL,'Sydney Cricket Ground','Sydney','Away','01-02-08','Lost'),
	(80,153,'Yes','No','Yes','Australia',4,1,4,NULL,'Adelaide Oval','Adelaide','Away','1/24/2008','Drawn'),
	(81,117,'No','No','Yes','Australia',1,2,NULL,97.5,'Sydney Cricket Ground','Sydney','Away','03-02-08','Won'),
	(82,109,'Yes','No','No','Australia',4,1,4,NULL,'Vidarbha Cricket Association Ground','Nagpur','Home','11-06-08','Won'),
	(83,103,'No','No','No','England',4,4,1,NULL,'M. A. Chidambaram Stadium','Chennai','Home','12-11-08','Won'),
	(84,163,'No','No','Yes','New Zealand',2,1,NULL,122.55,'AMI Stadium ','Christchurch','Away','03-08-09','Won'),
	(85,160,'Yes','No','Yes','New Zealand',4,2,1,NULL,'Seddon Park','Hamilton','Away','3/18/2009','Won'),
	(86,138,'Yes','No','Yes','Sri Lanka',1,1,NULL,103.75,'R. Premadasa Stadium','Colombo','Away','9/14/2009','Won'),
	(87,175,'Yes','No','No','Australia',2,2,NULL,124.11,'Rajiv Gandhi International Stadium','Hyderabad','Home','11-05-09','Lost'),
	(88,100,'No','No','No','Sri Lanka',5,3,1,NULL,'Sardar Patel Stadium','Ahmedabad','Home','11/16/2009','Drawn'),
	(89,105,'No','No','Yes','Bangladesh',4,1,1,NULL,'Zohur Ahmed Chowdhury Stadium','Chittagong','Away','1/17/2010','Won'),
	(90,143,'Yes','No','No','Bangladesh',4,2,2,NULL,'Sher-e-Bangla National Stadium','Mirpur','Away','1/24/2010','Won'),
	(91,100,'Yes','No','No','South Africa',4,3,1,NULL,'Vidarbha Cricket Association Ground','Nagpur','Home','02-06-10','Lost'),
	(92,106,'Yes','No','No','South Africa',4,2,2,NULL,'Eden Gardens','Kolkata','Home','2/14/2010','Won'),
	(93,200,'No','No','Yes','South Africa',2,1,NULL,136.05,'Roop Singh Stadium','Gwalior','Home','2/24/2010','Won'),
	(94,203,'Yes','No','No','Sri Lanka',4,2,2,NULL,'Sinhalese Sports Club Ground','Colombo','Away','7/26/2010','Drawn'),
	(95,214,'Yes','No','Yes','Australia',4,2,2,NULL,'M. Chinnaswamy Stadium','Bangalore','Home','10-09-10','Won'),
	(96,111,'No','No','No','South Africa',5,3,1,NULL,'SuperSport Park','Centurion','Away','12/16/2010','Lost'),
	(97,146,'Yes','No','No','South Africa',4,2,3,NULL,'Newlands Cricket Ground','Cape Town','Away','01-02-11','Drawn'),
	(98,120,'Yes','No','No','England',2,1,NULL,104.34,'M. Chinnaswamy Stadium','Bangalore','Home','2/27/2011','Tied'),
	(99,111,'Yes','No','No','South Africa',2,1,NULL,109.9,'VCA Stadium','Nagpur','Home','03-12-11','Lost'),
	(100,114,'Yes','No','No','Bangladesh',2,1,NULL,77.55,'Sher-e-Bangla National Stadium','Mirpur','Away','3/16/2012','Lost')
;


ALTER TABLE Centuries
ADD COLUMN Match_type text;

ALTER TABLE Centuries
ADD COLUMN New_date DATE;

ALTER TABLE Centuries
RENAME COLUMN New_date TO Year;

UPDATE Centuries
 SET Match_type = CASE
		WHEN Test IS NULL THEN 'ODI'
		ELSE 'TEST'
		END
;

UPDATE Centuries
SET Year = CASE
	WHEN Date LIKE '%90' THEN 1990
	WHEN Date LIKE '%91' THEN 1991
	WHEN Date LIKE '%92' THEN 1992
	WHEN Date LIKE '%93' THEN 1993
	WHEN Date LIKE '%94' THEN 1994
	WHEN Date LIKE '%95' THEN 1995
	WHEN Date LIKE '%96' THEN 1996
	WHEN Date LIKE '%97' THEN 1997
	WHEN Date LIKE '%98' THEN 1998
	WHEN Date LIKE '%99' THEN 1999
	WHEN Date LIKE '%00' THEN 2000
	WHEN Date LIKE '%01' THEN 2001
	WHEN Date LIKE '%02' THEN 2002
	WHEN Date LIKE '%03' THEN 2003
	WHEN Date LIKE '%04' THEN 2004
	WHEN Date LIKE '%05' THEN 2005
	WHEN Date LIKE '%06' THEN 2006
	WHEN Date LIKE '%07' THEN 2007
	WHEN Date LIKE '%08' THEN 2008
	WHEN Date LIKE '%09' THEN 2009
	WHEN Date LIKE '%10' THEN 2010
	WHEN Date LIKE '%11' THEN 2011
	WHEN Date LIKE '%12' THEN 2012
	END;


	DROP TABLE Centuries;



	