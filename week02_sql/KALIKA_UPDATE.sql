
--Create a permanent table called normal that contains all property sales where the sale condition was Normal.
CREATE TABLE IF NOT EXISTS normal AS
SELECT * 
from houseprices 
WHERE salecondition = 'Normal';

--Drop the normal table you just created and then recreate it again using the name normal_sales.
DROP TABLE IF EXISTS normal;
CREATE TABLE IF NOT EXISTS normal_sales AS
SELECT * 
from houseprices 
WHERE salecondition = 'Normal';

select * from normal_sales;
--From the newly-created normal_sales table, delete all the records where the neighborhood is Veenker.
DELETE FROM normal_sales WHERE neighborhood = 'Veenker';
SELECT * FROM normal_sales WHERE neighborhood = 'Veenker';
--Re-insert the Veenker neighborhood normal sale condition records.
INSERT INTO normal_sales
SELECT * FROM houseprices WHERE salecondition = 'Normal' and neighborhood = 'Veenker';

SELECT * FROM normal_sales WHERE neighborhood = 'Veenker'
--For all properties where the sale price was greater than $300,000, update the overall condition to be equal to the overall quality.
UPDATE houseprices
SET overallcond = overallqual
WHERE saleprice::INT > 300000;

--SELECT * from vehicles

-- Created table houseprice with columns. Note: All VARCHAR because I didn't want to investigate the data types. A good DBA would do better.
/*
CREATE TABLE public.houseprices (
id SERIAL,	
mssubclass VARCHAR(100),
	mszoning VARCHAR(100),	
	lotfrontage	VARCHAR(100),
	lotarea	VARCHAR(100),
	street	VARCHAR(100),
	alley	VARCHAR(100),
	lotshape	VARCHAR(100),
	landcontour	VARCHAR(100),
	utilities	VARCHAR(100),
	lotconfig	VARCHAR(100),
	landslope	VARCHAR(100),
	neighborhood	VARCHAR(100),
	condition1	VARCHAR(100),
	condition2	VARCHAR(100),
	bldgtype	VARCHAR(100),
	housestyle	VARCHAR(100),
	overallqual	VARCHAR(100),
	overallcond	VARCHAR(100),
	yearbuilt	VARCHAR(100),
	yearremodadd	VARCHAR(100),
	roofstyle	VARCHAR(100),
	roofmatl	VARCHAR(100),
	exterior1st	VARCHAR(100),
	exterior2nd	VARCHAR(100),
	masvnrtype	VARCHAR(100),
	masvnrarea	VARCHAR(100),
	exterqual	VARCHAR(100),
	extercond	VARCHAR(100),
	foundation	VARCHAR(100),
	bsmtqual	VARCHAR(100),
	bsmtcond	VARCHAR(100),
	bsmtexposure	VARCHAR(100),
	bsmtfintype1	VARCHAR(100),
	bsmtfinsf1	VARCHAR(100),
	bsmtfintype2	VARCHAR(100),
	bsmtfinsf2	VARCHAR(100),
	bsmtunfsf	VARCHAR(100),
	totalbsmtsf	VARCHAR(100),
	heating	VARCHAR(100),
	heatingqc	VARCHAR(100),
	centralair	VARCHAR(100),
	electrical	VARCHAR(100),
	firstflrsf	VARCHAR(100),
	secondflrsf	VARCHAR(100),
	lowqualfinsf	VARCHAR(100),
	grlivarea	VARCHAR(100),
	bsmtfullbath	VARCHAR(100),
	bsmthalfbath	VARCHAR(100),
	fullbath	VARCHAR(100),
	halfbath	VARCHAR(100),
	bedroomabvgr	VARCHAR(100),
	kitchenabvgr	VARCHAR(100),
	kitchenqual	VARCHAR(100),
	totrmsabvgrd	VARCHAR(100),
	functional	VARCHAR(100),
	fireplaces	VARCHAR(100),
	fireplacequ	VARCHAR(100),
	garagetype	VARCHAR(100),
	garageyrblt	VARCHAR(100),
	garagefinish	VARCHAR(100),
	garagecars	VARCHAR(100),
	garagearea	VARCHAR(100),
	garagequal	VARCHAR(100),
	garagecond	VARCHAR(100),
	paveddrive	VARCHAR(100),
	wooddecksf	VARCHAR(100),
	openporchsf	VARCHAR(100),
	enclosedporch	VARCHAR(100),
	threessnporch	VARCHAR(100),
	screenporch	VARCHAR(100),
	poolarea	VARCHAR(100),
	poolqc	VARCHAR(100),
	fence	VARCHAR(100),
	miscfeature	VARCHAR(100),
	miscval	VARCHAR(100),
	mosold	VARCHAR(100),
	yrsold	VARCHAR(100),
	saletype	VARCHAR(100),
	salecondition	VARCHAR(100),
	saleprice VARCHAR(100),
	PRIMARY KEY (id)
)
*/


-- Created table vehicles with columns. Note: All VARCHAR because I didn't want to investigate the data types. A good DBA would do better.
/*
CREATE TABLE public.vehicles
(id SERIAL,
  make VARCHAR(50),
  model VARCHAR(50),
  year VARCHAR(50),
  class VARCHAR(255),
 trans VARCHAR(50),
 drive VARCHAR(50), 
 cyl VARCHAR(50),
 displ VARCHAR(50),
 fuel VARCHAR(50),
 hwy VARCHAR(50),
 cty VARCHAR(50),
 PRIMARY KEY (id)
)
;

ALTER TABLE public.vehicles
    OWNER to postgres;
*/