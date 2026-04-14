create table citys(
    cityid int primary key,
	cityname varchar(50) unique,
	pincode int,
	remark varchar(50)
);

insert into citys values
(1,'rajkot',360005,'good'),
(2, 'Surat',335009,'Good'),
(3, 'Baroda',390001, 'Awesome'),
(4, 'Jamnagar' ,361003, 'Smart'),
(5, 'Junagadh' ,362229, 'Historic'),
(6, 'Morvi' ,363641, 'Ceramic'); 
 
 SELECT * FROM citys

 create table village(
    villageid int primary key,
	villagename varchar(50),
	cityid int foreign key references city(cityid)
	
);


insert into village values
(101,'Raiya',1), 
(102,'Madhapar',1), 
(103,'Dodka',3), 
(104, 'Falla', 4), 
(105, 'Bhesan', 5), 
(106, 'Dhoraji', 5)

select * from village 
SELECT * FROM citys

     
--Part – A

--1. Display all the villages of Rajkot city.
	SELECT VillageName,CityName 
	FROM Village JOIN citys  
	ON citys.CityID = village.CityID
	WHERE CityName = 'Rajkot'

--2. Display city along with their villages & pin code.
select villagename,CityName,PINCODE FROM citys
LEFT JOIN village 
ON citys.CityID = village.CityID

--3. Display the city having more than one village.
	SELECT COUNT(VillageID),cityname 
	FROM Village JOIN citys  
	ON citys.CityID = village.CityID
	GROUP BY cityname
	HAVING COUNT(VillageID) > 1

--4. Display the city having no village.
	SELECT cityname , COUNT(VillageID)
	FROM citys LEFT JOIN Village
	ON citys.CityID = village.CityID
	GROUP BY cityname
	HAVING COUNT(VillageID)=0

--5. Count the total number of villages in each city.
	SELECT COUNT(VillageID),cityname 
	FROM Village FULL OUTER JOIN citys  
	ON citys.CityID = village.CityID
	GROUP BY cityname 

--Part – B


--6. Display number of villages of Rajkot city.
	SELECT cityname , COUNT(VillageID)
	FROM citys LEFT JOIN Village
	ON citys.CityID = village.CityID
	GROUP BY cityname
	HAVING cityname='RAJKOT'


--7. Display Rajkot city along with their villages & pin code.
    select villagename,CityName,PINCODE FROM citys
    LEFT JOIN village 
    ON citys.CityID = village.CityID
	WHERE cityname='RAJKOT'

--8. Display villages of Rajkot & Junagadh city.
	SELECT villagename
	FROM citys LEFT JOIN Village
	ON citys.CityID = village.CityID
	WHERE cityname='RAJKOT' OR cityname='Junagadh'
	GROUP BY villagename

--Part – C
--9. Display number of villages of Surat city.
   SELECT COUNT(VILLAGEID)
   FROM citys LEFT JOIN Village
   ON citys.CityID = village.CityID
   WHERE CITYNAME='SURAT'

--10. Display city along with their villages & pin code whose Remarks is Good.
   select villagename,CityName,PINCODE
   FROM citys JOIN Village
   ON citys.CityID = village.CityID
   WHERE remark='GOOD'

--11. Display the city name of Falla village.
   select CityName
   FROM citys JOIN Village
   ON citys.CityID = village.CityID
   WHERE VillageName='falla'
