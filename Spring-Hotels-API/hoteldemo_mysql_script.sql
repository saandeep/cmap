-- to execute below script, at mysql command prompt , use command as SOURCE c:\<hoteldemo_mysql_script.sql>
create database hotels;
use hotels;
create table hotelcatalog (hotelname varchar(100) NOT NULL,
city varchar(50) not null,
address1 varchar(250) not null,
stateprovincecode varchar(10) not null, 
countrycode varchar(2) not null,
airportcode varchar(10) not null, 
locationDescription varchar(250) not null,
amenityMask LONG, 
postalCode varchar(20) not null, 
rateCurrencyCode varchar(3) not null ,
 hotelid int not null,
 rating double not null,
 tripAdvisorRating double not null, 
 tripAdvisorRatingUrl varchar(250) not null,
 highRate int not null, lowRate int not null);

create table hotelreview(hotelid int not null, reviewdesc varchar(250) not null,hotelname varchar(250));
create table hotelinventory(hotelid int not null,roomtype varchar(100),availablerooms int not null,price double not null);

--insert into hotelcatalog 

insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,highRate,lowRate) values ("Hotel Andra","Seattle","2000 4th Ave","WA","US","SEA","Near Pike Place Market",1441795,"98121","USD",119562,4.5,4,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif",139,109);


insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,highRate,lowRate) values ("Hotel Deca - A Noble House Hotel","Burlingame","4507 Brooklyn Avenue NE","WA","US","SEA","In Seattle (University District)",1441795,"98105","USD",191964,3.5,3.5,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif",159,119);


insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,highRate,lowRate) values ("Sheraton Seattle Hotel","New York","1400 6th Ave","WA","US","SEA","In Seattle (University District)",262147,"98101","USD",164116,4,4,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif",320,205);


insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,highRate,lowRate) values ("Motif Seattle","Seattle","1415 5th Ave","WA","US","SEA","Near Pike Place Market",7798786,"98121","USD",1257278,3,3,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/3.5-12345-4.gif",289,259);


insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,highRate,lowRate) values ("The Westin Seattle","Seattle","1900 5th Ave","WA","US","SEA","Near Pike Place Market",7798786,"98109","USD",164122,4,4,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif",259,209);

insert into hotelcatalog(hotelname,city,address1,stateProvinceCode,countryCode,airportCode,locationDescription,amenityMask,postalCode,rateCurrencyCode,hotelId,rating,tripAdvisorRating,tripAdvisorRatingUrl,highRate,lowRate) values ("W Seattle","Seattle","1112 4th Ave","WA","US","SEA","Near Pike Place Market",7798786,"98101","USD",213497,4.5,4.0,"http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif",210,175);


-- insert into hotelreview
insert into hotelreview(hotelid,reviewdesc,hotelname) values (119562,"pleasant stay at hotel andra","Hotel Andra");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (119562,"Nice  to stay at Hotel Andra","Hotel Andra");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (119562,"Awesome stay at Hotel Andra","Hotel Andra");

insert into hotelreview(hotelid,reviewdesc,hotelname) values (191964,"happy to stay in this hotel","Hotel Deca - A Noble House Hotel");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (191964,"Nice  to stay at this hotel","Hotel Deca - A Noble House Hotel");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (191964,"review about Hotel Deca - A Noble House Hotel","Hotel Deca - A Noble House Hotel");

insert into hotelreview(hotelid,reviewdesc,hotelname) values (164116,"happy to stay","Sheraton Seattle Hotel");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (164116,"Awesome stay here","Sheraton Seattle Hotel");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (164116,"review about Sheraton Seattle Hotel","Sheraton Seattle Hotel");

insert into hotelreview(hotelid,reviewdesc,hotelname) values (1257278,"happy to stay in this hotel","Sheraton Seattle Hotel");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (1257278,"Nice  to stay at this hotel","Sheraton Seattle Hotel");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (1257278,"review about Motif Seattle Hotel","Sheraton Seattle Hotel");

insert into hotelreview(hotelid,reviewdesc,hotelname) values (164122,"happy to stay in this hotel","The Westin Seattle");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (164122,"Nice  to stay at this hotel","The Westin Seattle");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (164122,"review about The Westin Seattle","The Westin Seattle");


insert into hotelreview(hotelid,reviewdesc,hotelname) values (213497,"happy to stay in this hotel","W Seattle");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (213497,"Nice  to stay at this hotel","W Seattle");
insert into hotelreview(hotelid,reviewdesc,hotelname) values (213497,"review about W Seattle","W Seattle");



-- insert into hotelinventory

insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (119562,"deluxe",30,400.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (119562,"deluxe",30,400.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (119562,"luxury",10,600.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (119562,"suite",10,800.0);

insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (191964,"deluxe",50,100.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (191964,"deluxe",50,100.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (191964,"luxury",30,300.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (191964,"suite",35,800.0);

insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (164116,"deluxe",20,200.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (164116,"deluxe",20,200.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (164116,"luxury",40,300.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (164116,"suite",15,900.0);


insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (1257278,"deluxe",50,400.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (1257278,"deluxe",50,400.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (1257278,"luxury",60,600.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (1257278,"suite",15,800.0);

insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (164122,"deluxe",50,400.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (164122,"deluxe",50,400.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (164122,"luxury",30,600.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (164122,"suite",35,800.0);


insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (213497,"deluxe",50,400.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (213497,"deluxe",50,400.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (213497,"luxury",60,600.0);
insert into hotelinventory(hotelid,roomtype,availablerooms,price) values (213497,"suite",15,800.0);

