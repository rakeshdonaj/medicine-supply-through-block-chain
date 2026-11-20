/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.1.39-community : Database - medicine_scm
*********************************************************************
Server version : 5.1.39-community
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `medicine_scm`;

USE `medicine_scm`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `distblock` */

DROP TABLE IF EXISTS `distblock`;

CREATE TABLE `distblock` (
  `emailId` varchar(100) DEFAULT NULL,
  `drugName` varchar(100) DEFAULT NULL,
  `block1` varchar(100) DEFAULT NULL,
  `block2` varchar(100) DEFAULT NULL,
  `block3` varchar(100) DEFAULT NULL,
  `hashValBlock1` varchar(100) DEFAULT NULL,
  `hashValBlock2` varchar(100) DEFAULT NULL,
  `hashValBlock3` varchar(100) DEFAULT NULL,
  `roothashVal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `distblock` */

insert  into `distblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('Doxy','chandan@mail.com','chandan@mail.com-Doxy1.txt','chandan@mail.com-Doxy2.txt','chandan@mail.com-Doxy3.txt','987E98BA98D6E16B0D6788CB0A8EF60543838F83','819D841A189314D1CD5D74B586B69F2D61596BB1','DF64AA393B237E6D254C39D9F87992CE051083FE','A7E82F8D0486AD6DF202884B9E4473C1A9BBDE78');
insert  into `distblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('AAA','chandan@mail.com','chandan@mail.com-AAA1.txt','chandan@mail.com-AAA2.txt','chandan@mail.com-AAA3.txt','BBF121FBEA02B6F1936F3D9C28A71C86A9679BB6','5799C628DA8FC4D86EDB858C2C31C64014B5B321','99F9137883947BB86187442B74D419CFA57A4F22','71AB48150E6AD1C08A5664EE1B8BB1FCCC710DB8');
insert  into `distblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('rakesh@mail.com','Levipil','rakesh@mail.com-Levipil1.txt','rakesh@mail.com-Levipil2.txt','rakesh@mail.com-Levipil3.txt','DA2C059C7E34AB980683FAA309C1060E8FFDB66C','F6784673C1078A55CD3185AB911239B8B5DDCBEB','6C79E5CC8D189AC9BBC3F8B24C7B71C96DF47D95','BCDC7E4074DAD7DC5A62FB44B03BACB89CE1A6D1');
insert  into `distblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('chandan@mail.com','AAA','chandan@mail.com-AAA1.txt','chandan@mail.com-AAA2.txt','chandan@mail.com-AAA3.txt','BBF121FBEA02B6F1936F3D9C28A71C86A9679BB6','5799C628DA8FC4D86EDB858C2C31C64014B5B321','1E39A6E0DEAD4A18A586FDBC3C633BB7FB6B0B61','EC421219A0AF72B8271CB3C891E9094EA57D63BA');
insert  into `distblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('chandan@mail.com','Doxy','chandan@mail.com-Doxy1.txt','chandan@mail.com-Doxy2.txt','chandan@mail.com-Doxy3.txt','987E98BA98D6E16B0D6788CB0A8EF60543838F83','819D841A189314D1CD5D74B586B69F2D61596BB1','3A2693EF0305612F79042FA2E530F691C8B8C804','BB86B68FB1CE6ECADCB809FD261182F608C4E03E');
insert  into `distblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('pooja@mail.com','PAND','pooja@mail.com-PAND1.txt','pooja@mail.com-PAND2.txt','pooja@mail.com-PAND3.txt','4090D8631DF850598A2527BAC94CEB88A44B0A72','CC7FA751C6C0A63B2E52064292861C8FF6FCED9F','CC02F7071E1D7A5C318B1D8F0364624ED946947A','8AC7F0D4E76472BA206F51CAD5157CEB43A02323');
insert  into `distblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('sandip@gmail.com','pantrolploxe','sandip@gmail.com-pantrolploxe1.txt','sandip@gmail.com-pantrolploxe2.txt','sandip@gmail.com-pantrolploxe3.txt','51CECBD73342DF20ADF55F92775B1D9099262636','6F81D3064C80A8BE2478B0E298BFA217B9A2FAF9','68A2806EA1869A960DB020386777CF1A9A6B362B','A9547C42897F2FBBFD8C4247F18BBC2A391EBE36');
insert  into `distblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('ganga@gmail.com','Zerodol P','ganga@gmail.com-Zerodol P1.txt','ganga@gmail.com-Zerodol P2.txt','ganga@gmail.com-Zerodol P3.txt','5FB39CCD9D6BC98A4E73C719CF8EF73DE6584A4A','F96C5B648E7210E6E7FBC341C5B4FB19BA670E19','BE4500C1B1F69BF8E72A4419C71273DF872FF52C','3181246472DF549D760F3103292B6317674F7501');

/*Table structure for table `hospitalblock` */

DROP TABLE IF EXISTS `hospitalblock`;

CREATE TABLE `hospitalblock` (
  `emailId` varchar(100) DEFAULT NULL,
  `drugName` varchar(100) DEFAULT NULL,
  `block1` varchar(100) DEFAULT NULL,
  `block2` varchar(100) DEFAULT NULL,
  `block3` varchar(100) DEFAULT NULL,
  `hashValBlock1` varchar(100) DEFAULT NULL,
  `hashValBlock2` varchar(100) DEFAULT NULL,
  `hashValBlock3` varchar(100) DEFAULT NULL,
  `roothashVal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hospitalblock` */

insert  into `hospitalblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('arun@mail.com','Levipil','arun@mail.com-Levipil1.txt','arun@mail.com-Levipil2.txt','arun@mail.com-Levipil3.txt','DA2C059C7E34AB980683FAA309C1060E8FFDB66C','F6784673C1078A55CD3185AB911239B8B5DDCBEB','80D9F2DA3BF9094558E9DA05282C32420D418105','52AB2637B146ED4C9308697E8876F24A81F570C5');
insert  into `hospitalblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('arun@mail.com','Coldact','arun@mail.com-Coldact1.txt','arun@mail.com-Coldact2.txt','arun@mail.com-Coldact3.txt','E1556589D22C09844AEC70B27B6D0B8E2D0D6697','7BEA5729A766A0080701149340AFF1699E0089FF','42C2D1FE6EB564589BB15DD3671C2198353F1F4A','E548355C06ABC2A4AD2E508FA771B6AAA0206138');
insert  into `hospitalblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('neha@gmail.com','PAND','neha@gmail.com-PAND1.txt','neha@gmail.com-PAND2.txt','neha@gmail.com-PAND3.txt','4090D8631DF850598A2527BAC94CEB88A44B0A72','CC7FA751C6C0A63B2E52064292861C8FF6FCED9F','B5495CB1D2828E4BA25CC4F8B31D0208337CA587','0229133D0D476F5085B12CCE90448E76B0E5A08E');
insert  into `hospitalblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('tejaswini@gmail.com','pantrolploxe','tejaswini@gmail.com-pantrolploxe1.txt','tejaswini@gmail.com-pantrolploxe2.txt','tejaswini@gmail.com-pantrolploxe3.txt','51CECBD73342DF20ADF55F92775B1D9099262636','6F81D3064C80A8BE2478B0E298BFA217B9A2FAF9','72A68CC95205C633BA15187F930727F720A01B86','3206C6FDF6D259C8161D6562F090CA2D5D697E0C');
insert  into `hospitalblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('hemanth@gmail.com','Zerodol P','hemanth@gmail.com-Zerodol P1.txt','hemanth@gmail.com-Zerodol P2.txt','hemanth@gmail.com-Zerodol P3.txt','5FB39CCD9D6BC98A4E73C719CF8EF73DE6584A4A','F96C5B648E7210E6E7FBC341C5B4FB19BA670E19','FF0081B6259AF3970E0F3340F71797B1D110B0A5','32F446BE1A6518E445404BF162D7AFC2EC2EF167');

/*Table structure for table `iteminfo` */

DROP TABLE IF EXISTS `iteminfo`;

CREATE TABLE `iteminfo` (
  `drugName` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `manufactureDate` varchar(20) DEFAULT NULL,
  `expiryDate` varchar(20) DEFAULT NULL,
  `ingredients` varchar(100) DEFAULT NULL,
  `usageofDrug` varchar(100) DEFAULT NULL,
  `sideEffect` varchar(100) DEFAULT NULL,
  `certificateFname` varchar(100) DEFAULT NULL,
  `emailId` varchar(100) DEFAULT NULL,
  `publicKey` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `iteminfo` */

insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('AAA','Tumkur','2021-03-01','2021-03-23','sdasf','dvsdf MN M ','jjkbjkbjkb','1.PNG','chandan@mail.com','D38RkbkC143RaDE1');
insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('GGG','TMKR','2021-03-01','2021-04-10','EWRT POI HGVHJVJHV','DFK SDJDS EEESDFSDF   SDFSD','HDHDJ','4.PNG','praveen@mail.com','1kECDRD411D1ECC8');
insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('Doxy','TUmkur','2021-05-11','2021-06-05','pottasium nitrate','asdv sdfsds  sdf','no','4.PNG','chandan@mail.com','b5a8311C4ERD8D1R');
insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('Coldact','tumkur','2021-05-12','2021-06-05','sulphate, pottasium','aaaa  a aa','no','2.PNG','vishal@mail.com','6a33Rs82ECjskDRG');
insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('Rantac','Tumkur','2021-07-05','2021-08-07','sdfsdf sd sd ','dfdsfsd fsd','no','1.PNG','rakesh@mail.com','1aaD1136RDG3DD1a');
insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('Levipil','Tumur','2021-07-28','2021-08-07','qwert r rre ','rr r   eererfre','no','1.PNG','rakesh@mail.com','GDsk42DG6k2D1Csa');
insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('PAND','Tumkur','2022-04-20','2022-05-07','wewqrwrwer werwerwev dkgn','ksdf sdods sdkd ms sdf k','no','4.PNG','pooja@mail.com','5G16jsE6E1jDk1R5');
insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('pantrolploxe','Tumkur','2022-06-02','2022-06-30','dfsdf','dfgdfdgdf dfbdf','no','3.PNG','sandip@gmail.com','D611ED5b1C6j11b3');
insert  into `iteminfo`(`drugName`,`location`,`manufactureDate`,`expiryDate`,`ingredients`,`usageofDrug`,`sideEffect`,`certificateFname`,`emailId`,`publicKey`) values ('Zerodol P','Tumkut','2022-06-19','2022-09-23','dgfdg','dfgdg','no','2.PNG','ganga@gmail.com','1sbDDGD2D1DRD2aE');

/*Table structure for table `patientblock` */

DROP TABLE IF EXISTS `patientblock`;

CREATE TABLE `patientblock` (
  `emailId` varchar(100) DEFAULT NULL,
  `drugName` varchar(100) DEFAULT NULL,
  `block1` varchar(100) DEFAULT NULL,
  `block2` varchar(100) DEFAULT NULL,
  `block3` varchar(100) DEFAULT NULL,
  `hashValBlock1` varchar(100) DEFAULT NULL,
  `hashValBlock2` varchar(100) DEFAULT NULL,
  `hashValBlock3` varchar(100) DEFAULT NULL,
  `roothashVal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patientblock` */

insert  into `patientblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('arun@mail.com','Coldact','arun@mail.com-Coldact-siddarth1.txt','arun@mail.com-Coldact-siddarth2.txt','arun@mail.com-Coldact-siddarth3.txt','E1556589D22C09844AEC70B27B6D0B8E2D0D6697','7BEA5729A766A0080701149340AFF1699E0089FF','40909DB2289BA38BC6DE40F9B19F16E8337B6BE6','C02B46E71904B7CC76677B7612B02D5DDE7F9DA7');
insert  into `patientblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('varun@mail.com','Doxy','varun@mail.com-Doxy-arun1.txt','varun@mail.com-Doxy-arun2.txt','varun@mail.com-Doxy-arun3.txt','987E98BA98D6E16B0D6788CB0A8EF60543838F83','819D841A189314D1CD5D74B586B69F2D61596BB1','AC4D558F64CCA6036E6275F4D93FEB2860E6EE56','A83D05E57CBEF710A8F31E56A504F7CAF78E46A7');
insert  into `patientblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('neha@gmail.com','PAND','neha@gmail.com-PAND-pratiksha1.txt','neha@gmail.com-PAND-pratiksha2.txt','neha@gmail.com-PAND-pratiksha3.txt','4090D8631DF850598A2527BAC94CEB88A44B0A72','CC7FA751C6C0A63B2E52064292861C8FF6FCED9F','BBFF792209B4F203C22666E67D5E3B2FD6F5A236','64AF91AAB4C7093794E2177F68EDFA920F20F1E6');
insert  into `patientblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('tejaswini@gmail.com','pantrolploxe','tejaswini@gmail.com-pantrolploxe-anil1.txt','tejaswini@gmail.com-pantrolploxe-anil2.txt','tejaswini@gmail.com-pantrolploxe-anil3.txt','51CECBD73342DF20ADF55F92775B1D9099262636','6F81D3064C80A8BE2478B0E298BFA217B9A2FAF9','CC569DA8D43B2CDA964D3122A5049CFABA8CADE4','9B49F136C09D948F6C79DEC7B43D09C3BAC7B2AA');
insert  into `patientblock`(`emailId`,`drugName`,`block1`,`block2`,`block3`,`hashValBlock1`,`hashValBlock2`,`hashValBlock3`,`roothashVal`) values ('hemanth@gmail.com','Zerodol P','hemanth@gmail.com-Zerodol P-darshan1.txt','hemanth@gmail.com-Zerodol P-darshan2.txt','hemanth@gmail.com-Zerodol P-darshan3.txt','5FB39CCD9D6BC98A4E73C719CF8EF73DE6584A4A','F96C5B648E7210E6E7FBC341C5B4FB19BA670E19','206FE042B210970B50877A9AB0E910ECFE918B38','F8874DFF508150884B0E70A103B5CD735692A2B8');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `emailId` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mobileNo` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `userType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (1,'Chandan','chandan@mail.com','123','8431727960','Tumkur','Manufacture');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (2,'Varun','varun@mail.com','123','8431727960','Mysore','Distributor');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (3,'siddarth','sid@mail.com','123','8431727960','Davangere','Patient');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (4,'Siddaganaga','sit@mail.com','123','8431727960','Tumkur','Hospital');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (5,'Praveen','praveen@mail.com','123','6452165548','Tumkur','Manufacture');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (6,'Srinivas','seena@mail.com','123','6545648996','Davangere','Distributor');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (7,'vishal','vishal@mail.com','123','7760580223','Tumkur','Manufacture');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (8,'arun','arun@mail.com','123','7349699242','Tumkur','Distributor');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (9,'manoj','manoj@mail.com','123','7760580223','Tumkur','Patient');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (10,'nandhi','nandhi@mail.com','123','7349699242','tumkur','Hospital');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (11,'rakesh','rakesh@mail.com','123','8963574120','Tumkur','Manufacture');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (12,'chidanand','chid@mail.com','123','8431727960','Tumkur','Distributor');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (13,'arun','arun@mail.com','123','7760580223','Tumkur','Patient');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (14,'siddaganga','siddaganga@mail.com','123','7760580223','Tumkur','Hospital');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (15,'pooja','pooja@mail.com','123','7760870704','Tumkur','Manufacture');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (16,'Neha','neha@gmail.com','123','7899307769','Tumkur','Distributor');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (17,'pratiksha','prati@gmail.com','123','6364155954','Tumkur','Patient');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (18,'sandip','sandip@gmail.com','123','8431727960','tumkur','Manufacture');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (19,'tejaswini','tejaswini@gmail.com','123','8296921609','tumkur','Distributor');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (20,'anil','anil@mail.com','123','8296921609','tumiur','Patient');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (21,'goutham','goutham@gmail.com','123','8296921609','tumkur','Hospital');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (22,'ganga','ganga@gmail.com','123','9591848841','tumkur','Manufacture');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (23,'hemanth','hemanth@gmail.com','123','8217407117','tumkur','Distributor');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (24,'darshan','darshan@mail.com','123','8088267911','tumkur','Patient');
insert  into `registration`(`id`,`userName`,`emailId`,`password`,`mobileNo`,`location`,`userType`) values (25,'qqqq','qqqq@gmail.com','123','8197795670','tumkur','Hospital');

/*Table structure for table `requestkeyfromdist` */

DROP TABLE IF EXISTS `requestkeyfromdist`;

CREATE TABLE `requestkeyfromdist` (
  `drugName` varchar(50) DEFAULT NULL,
  `emailId` varchar(50) DEFAULT NULL,
  `distributorEmail` varchar(50) DEFAULT NULL,
  `distributorName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `requestkeyfromdist` */

insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('AAA','chandan@mail.com','varun@mail.com','Varun');
insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('GGG','praveen@mail.com','varun@mail.com','Varun');
insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('Coldact','vishal@mail.com','arun@mail.com','arun');
insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('Rantac','rakesh@mail.com','chid@mail.com','chidanand');
insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('AAA','chandan@mail.com','chid@mail.com','chidanand');
insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('PAND','pooja@mail.com','neha@gmail.com','Neha');
insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('pantrolploxe','sandip@gmail.com','tejaswini@gmail.com','tejaswini');
insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('pantrolploxe','sandip@gmail.com','tejaswini@gmail.com','tejaswini');
insert  into `requestkeyfromdist`(`drugName`,`emailId`,`distributorEmail`,`distributorName`) values ('Zerodol P','ganga@gmail.com','hemanth@gmail.com','hemanth');

/*Table structure for table `requestkeyfromhospital` */

DROP TABLE IF EXISTS `requestkeyfromhospital`;

CREATE TABLE `requestkeyfromhospital` (
  `drugName` varchar(50) DEFAULT NULL,
  `emailId` varchar(50) DEFAULT NULL,
  `hospitalEmail` varchar(50) DEFAULT NULL,
  `hospitalName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `requestkeyfromhospital` */

insert  into `requestkeyfromhospital`(`drugName`,`emailId`,`hospitalEmail`,`hospitalName`) values ('AAA','varun@mail.com','sit@mail.com','Siddaganaga');
insert  into `requestkeyfromhospital`(`drugName`,`emailId`,`hospitalEmail`,`hospitalName`) values ('Coldact','arun@mail.com','nandhi@mail.com','nandhi');
insert  into `requestkeyfromhospital`(`drugName`,`emailId`,`hospitalEmail`,`hospitalName`) values ('Rantac','chid@mail.com','siddaganga@mail.com','siddaganga');
insert  into `requestkeyfromhospital`(`drugName`,`emailId`,`hospitalEmail`,`hospitalName`) values ('PAND','neha@gmail.com','sit@mail.com','Siddaganaga');
insert  into `requestkeyfromhospital`(`drugName`,`emailId`,`hospitalEmail`,`hospitalName`) values ('pantrolploxe','tejaswini@gmail.com','goutham@gmail.com','goutham');
insert  into `requestkeyfromhospital`(`drugName`,`emailId`,`hospitalEmail`,`hospitalName`) values ('Zerodol P','hemanth@gmail.com','qqqq@gmail.com','qqqq');

/*Table structure for table `requestkeyfrompatient` */

DROP TABLE IF EXISTS `requestkeyfrompatient`;

CREATE TABLE `requestkeyfrompatient` (
  `drugName` varchar(50) DEFAULT NULL,
  `emailId` varchar(50) DEFAULT NULL,
  `patientEmail` varchar(50) DEFAULT NULL,
  `patientName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `requestkeyfrompatient` */

insert  into `requestkeyfrompatient`(`drugName`,`emailId`,`patientEmail`,`patientName`) values ('AAA','varun@mail.com','sid@mail.com','siddarth');
insert  into `requestkeyfrompatient`(`drugName`,`emailId`,`patientEmail`,`patientName`) values ('Coldact','arun@mail.com','manoj@mail.com','manoj');
insert  into `requestkeyfrompatient`(`drugName`,`emailId`,`patientEmail`,`patientName`) values ('Rantac','chid@mail.com','arun@mail.com','arun');
insert  into `requestkeyfrompatient`(`drugName`,`emailId`,`patientEmail`,`patientName`) values ('PAND','neha@gmail.com','prati@gmail.com','pratiksha');
insert  into `requestkeyfrompatient`(`drugName`,`emailId`,`patientEmail`,`patientName`) values ('pantrolploxe','tejaswini@gmail.com','anil@mail.com','anil');
insert  into `requestkeyfrompatient`(`drugName`,`emailId`,`patientEmail`,`patientName`) values ('Zerodol P','hemanth@gmail.com','darshan@mail.com','darshan');

/*Table structure for table `shareiteminfo` */

DROP TABLE IF EXISTS `shareiteminfo`;

CREATE TABLE `shareiteminfo` (
  `drugName` varchar(50) DEFAULT NULL,
  `distributorName` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `transactionAmount` varchar(10) DEFAULT NULL,
  `transactionDate` varchar(50) DEFAULT NULL,
  `transactionTime` varchar(50) DEFAULT NULL,
  `emailId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shareiteminfo` */

insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','Varun','10','5000','27-03-2021','17:36:49','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('GGG','Varun','50','25000','27-03-2021','17:38:50','praveen@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Srinivas','10','8500','12-05-2021','11:59:20','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Varun','0','6500','12-05-2021','12:10:41','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Varun','0','5000','12-05-2021','12:13:10','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Varun','0','5000','12-05-2021','12:15:49','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Coldact','Varun','10','5000','12-05-2021','12:17:02','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Coldact','arun','30','1000','12-05-2021','17:08:08','vishal@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Rantac','chidanand','50','2500','05-07-2021','17:24:30','rakesh@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','arun','10','5000','08-07-2021','13:08:32','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','chidanand','10','5000','08-07-2021','13:09:40','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','arun','10','5000','08-07-2021','13:10:11','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Srinivas','10','5000','08-07-2021','13:17:38','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','Srinivas','10','5000','08-07-2021','13:21:08','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','Srinivas','10','5000','08-07-2021','13:26:11','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Srinivas','10','5000','08-07-2021','13:29:07','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Srinivas','10','5000','08-07-2021','13:31:36','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','Srinivas','10','5000','08-07-2021','14:07:04','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','Varun','10','5000','08-07-2021','14:12:42','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Srinivas','10','5000','08-07-2021','14:14:01','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','Srinivas','10','5000','08-07-2021','14:16:34','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','Srinivas','10','5000','08-07-2021','14:19:29','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','Varun','0','5000','08-07-2021','14:29:39','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','arun','10','2500','08-07-2021','14:34:13','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Levipil','arun','10','2500','28-07-2021','13:01:58','rakesh@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','chidanand','10','2500','08-09-2021','18:00:12','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','chidanand','10','2500','20-04-2022','15:54:26','chandan@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('PAND','Neha','40','5000','20-04-2022','16:51:28','pooja@mail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('pantrolploxe','tejaswini','-10','2000','02-06-2022','20:06:47','sandip@gmail.com');
insert  into `shareiteminfo`(`drugName`,`distributorName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Zerodol P','hemanth','-47','7500','19-06-2022','12:27:42','ganga@gmail.com');

/*Table structure for table `shareitemtohospital` */

DROP TABLE IF EXISTS `shareitemtohospital`;

CREATE TABLE `shareitemtohospital` (
  `drugName` varchar(50) DEFAULT NULL,
  `hospitalName` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `transactionAmount` varchar(10) DEFAULT NULL,
  `transactionDate` varchar(50) DEFAULT NULL,
  `transactionTime` varchar(50) DEFAULT NULL,
  `emailId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shareitemtohospital` */

insert  into `shareitemtohospital`(`drugName`,`hospitalName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','Siddaganaga','50','6500','31-03-2021','11:49:53','varun@mail.com');
insert  into `shareitemtohospital`(`drugName`,`hospitalName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Coldact','nandhi','50','9800','12-05-2021','17:21:32','arun@mail.com');
insert  into `shareitemtohospital`(`drugName`,`hospitalName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Rantac','siddaganga','10','6500','05-07-2021','17:31:31','chid@mail.com');
insert  into `shareitemtohospital`(`drugName`,`hospitalName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Levipil','nandhi','10','2500','28-07-2021','13:04:40','arun@mail.com');
insert  into `shareitemtohospital`(`drugName`,`hospitalName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Coldact','nandhi','10','2500','28-07-2021','13:36:24','arun@mail.com');
insert  into `shareitemtohospital`(`drugName`,`hospitalName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('PAND','Siddaganaga','5','1000','20-04-2022','17:14:04','neha@gmail.com');
insert  into `shareitemtohospital`(`drugName`,`hospitalName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('pantrolploxe','goutham','10','2000','03-06-2022','11:23:55','tejaswini@gmail.com');
insert  into `shareitemtohospital`(`drugName`,`hospitalName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Zerodol P','qqqq','33','23455','19-06-2022','12:37:58','hemanth@gmail.com');

/*Table structure for table `shareitemtopatient` */

DROP TABLE IF EXISTS `shareitemtopatient`;

CREATE TABLE `shareitemtopatient` (
  `drugName` varchar(50) DEFAULT NULL,
  `patientName` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `transactionAmount` varchar(10) DEFAULT NULL,
  `transactionDate` varchar(50) DEFAULT NULL,
  `transactionTime` varchar(50) DEFAULT NULL,
  `emailId` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shareitemtopatient` */

insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('AAA','siddarth','25','4500','31-03-2021','11:12:02','varun@mail.com');
insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Coldact','manoj','20','2500','12-05-2021','17:18:13','arun@mail.com');
insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Rantac','arun','10','6500','05-07-2021','17:30:00','chid@mail.com');
insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Levipil','siddarth','14','2300','28-07-2021','13:14:00','arun@mail.com');
insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Coldact','siddarth','10','1000','28-07-2021','13:31:55','arun@mail.com');
insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Doxy','arun','10','2500','20-04-2022','16:14:55','varun@mail.com');
insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('PAND','pratiksha','5','1000','20-04-2022','17:02:31','neha@gmail.com');
insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('pantrolploxe','anil','10','3000','03-06-2022','11:22:50','tejaswini@gmail.com');
insert  into `shareitemtopatient`(`drugName`,`patientName`,`quantity`,`transactionAmount`,`transactionDate`,`transactionTime`,`emailId`) values ('Zerodol P','darshan','34','4500','19-06-2022','12:34:44','hemanth@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
