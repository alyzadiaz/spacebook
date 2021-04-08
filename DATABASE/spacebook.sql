-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 01:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spacebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `website` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `payload_ids` text DEFAULT NULL,
  `manufacturers` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `wikipedia` text DEFAULT NULL,
  `mission_id` text DEFAULT NULL,
  `mission_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`website`, `description`, `payload_ids`, `manufacturers`, `twitter`, `wikipedia`, `mission_id`, `mission_name`) VALUES
('http://www.thaicom.net/en/satellites/overview', 'Thaicom is the name of a series of communications satellites operated from Thailand, and also the name of Thaicom Public Company Limited, which is the company that owns and operates the Thaicom satellite fleet and other telecommunication businesses in Thailand and throughout the Asia-Pacific region. The satellite projects were named Thaicom by the King of Thailand, His Majesty the King Bhumibol Adulyadej, as a symbol of the linkage between Thailand and modern communications technology.', 'Thaicom 6,Thaicom 8', 'Orbital ATK', 'https://twitter.com/thaicomplc', 'https://en.wikipedia.org/wiki/Thaicom', '9D1B7E0', 'Thaicom'),
('https://www.telesat.com/', 'Telstar 19V (Telstar 19 Vantage) is a communication satellite in the Telstar series of the Canadian satellite communications company Telesat. It was built by Space Systems Loral (MAXAR) and is based on the SSL-1300 bus. As of 26 July 2018, Telstar 19V is the heaviest commercial communications satellite ever launched, weighing at 7,076 kg (15,600 lbs) and surpassing the previous record, set by TerreStar-1 (6,910 kg/15230lbs), launched by Ariane 5ECA on 1 July 2009.', 'Telstar 19V,Telstar 18V', 'SSL', 'None', 'https://en.wikipedia.org/wiki/Telesat', 'F4F83DE', 'Telstar'),
('https://www.iridiumnext.com/', 'In 2017, Iridium began launching Iridium NEXT, a second-generation worldwide network of telecommunications satellites, consisting of 66 active satellites, with another nine in-orbit spares and six on-ground spares. These satellites will incorporate features such as data transmission that were not emphasized in the original design. The constellation will provide L-band data speeds of up to 128 kbit/s to mobile terminals, up to 1.5 Mbit/s to Iridium Pilot marine terminals, and high-speed Ka-band service of up to 8 Mbit/s to fixed/transportable terminals. The next-generation terminals and service are expected to be commercially available by the end of 2018. However, Iridium\'s proposed use of its next-generation satellites has raised concerns the service will harmfully interfere with GPS devices. The satellites will incorporate a secondary payload for Aireon, a space-qualified ADS-B data receiver. This is for use by air traffic control and, via FlightAware, for use by airlines. A tertiary payload on 58 satellites is a marine AIS ship-tracker receiver, for Canadian company exactEarth Ltd. Iridium can also be used to provide a data link to other satellites in space, enabling command and control of other space assets regardless of the position of ground stations and gateways.', 'Iridium NEXT 1,Iridium NEXT 2,Iridium NEXT 3,Iridium NEXT 4,Iridium NEXT 5,Iridium NEXT 6,Iridium NEXT 7,Iridium NEXT 8', 'Orbital ATK', 'https://twitter.com/IridiumBoss?lang=en', 'https://en.wikipedia.org/wiki/Iridium_satellite_constellation', 'F3364BF', 'Iridium NEXT'),
('https://www.spacex.com/', 'Commercial Resupply Services (CRS) are a series of contracts awarded by NASA from 2008–2016 for delivery of cargo and supplies to the International Space Station (ISS) on commercially operated spacecraft. The first CRS contracts were signed in 2008 and awarded $1.6 billion to SpaceX for 12 cargo transport missions and $1.9 billion to Orbital Sciences for 8 missions, covering deliveries to 2016. In 2015, NASA extended the Phase 1 contracts by ordering an additional three resupply flights from SpaceX and one from Orbital Sciences. After additional extensions late in 2015, SpaceX is currently scheduled to have a total of 20 missions and Orbital 10. SpaceX began flying resupply missions in 2012, using Dragon cargo spacecraft launched on Falcon 9 rockets from Space Launch Complex 40 at Cape Canaveral Air Force Station, Cape Canaveral, Florida. Orbital Sciences began deliveries in 2013 using Cygnus spacecraft launched on the Antares rocket from Launch Pad 0A at the Mid-Atlantic Regional Spaceport (MARS), Wallops Island, Virginia. A second phase of contracts (known as CRS2) were solicited and proposed in 2014. They were awarded in January 2016 to Orbital ATK, Sierra Nevada Corporation, and SpaceX, for cargo transport flights beginning in 2019 and expected to last through 2024.', 'Dragon Qualification Unit,COTS Demo Flight 1,COTS Demo Flight 2,SpaceX CRS-1,SpaceX CRS-2,SpaceX CRS-3,SpaceX CRS-4,SpaceX CRS-5,SpaceX CRS-6,SpaceX CRS-7,SpaceX CRS-8,SpaceX CRS-9,SpaceX CRS-10,SpaceX CRS-11,SpaceX CRS-12,SpaceX CRS-13,SpaceX CRS-14,SpaceX CRS-15', 'SpaceX', 'https://twitter.com/SpaceX', 'https://en.wikipedia.org/wiki/Commercial_Resupply_Services#SpaceX', 'EE86F74', 'Commercial Resupply Services'),
('https://www.ses.com/', 'SES S.A. is a communications satellite owner and operator providing video and data connectivity worldwide to broadcasters, content and internet service providers, mobile and fixed network operators, governments and institutions, with a mission to “connect, enable, and enrich”. SES operates more than 50 geostationary orbit satellites and 16 medium Earth orbit satellites. These comprise the well-known European Astra TV satellites, the O3b data satellites and others with names including AMC, Ciel, NSS, Quetzsat, YahSat and SES.', 'SES-8,SES-9,SES-10,SES-11,SES-16,SES-12', 'Orbital ATK,Boeing,Airbus Defence and Space', 'https://twitter.com/SES_Satellites', 'https://en.wikipedia.org/wiki/SES_S.A.', '6C42550', 'SES'),
('https://www.jsat.net/en/', 'The JSAT constellation is a communication and broadcasting satellite constellation formerly operated by JSAT Corporation and currently by SKY Perfect JSAT Group. It has become the most important commercial constellation in Japan, and the fifth of the world. It has practically amalgamated all private satellite operators in Japan, with only B-SAT left as a local competitor.', 'JCSAT-2B,JCSAT-16', 'SSL', 'None', 'https://en.wikipedia.org/wiki/JSAT_Corporation', 'FE3533D', 'JCSAT'),
('https://www.asiasat.com/', 'Asia Satellite Telecommunications Holdings Limited known as its brand name AsiaSat is a commercial operator of communication spacecraft. AsiaSat is based in Hong Kong but incorporated in Bermuda.', 'AsiaSat 8,AsiaSat 6', 'SSL', 'https://twitter.com/asia_satellite', 'https://en.wikipedia.org/wiki/AsiaSat', '593B499', 'AsiaSat'),
('https://www.orbcomm.com/', 'Orbcomm Generation 2 (OG2) second-generation satellites are intended to supplement and eventually replace the current first generation constellation. Eighteen satellites were ordered by 2008—nominally intended to be launched in three groups of six during 2010–2014—and by 2015 have all been launched, on three flights. Orbcomm has options for a further thirty OG2 spacecraft. The satellites were launched by SpaceX on the Falcon 9 launch system. Originally, they were to launch on the smaller Falcon 1e rocket.', 'Orbcomm-OG2,Orbcomm-OG2-M1,Orbcomm-OG2-M2', 'Sierra Nevada Corporation', 'https://twitter.com/orbcomm_inc', 'https://en.wikipedia.org/wiki/Orbcomm_(satellite)#Orbcomm-OG2', 'CE91D46', 'Orbcomm OG2'),
('http://www.absatellite.com/', 'ABS, formerly Asia Broadcast Satellite, is a global satellite operator based in Hong Kong and officially incorporated in Bermuda. Its services include direct-to-home and satellite-to-cable TV distribution, cellular services, and internet services. Operating 6 communication satellites, the satellite fleet currently covers 93% of the world’s population including the Americas, Africa, Asia Pacific, Europe, the Middle East, Russia and Commonwealth of Independent States.', 'ABS-3A,ABS-3B', 'Boeing', 'None', 'https://en.wikipedia.org/wiki/ABS_(satellite_operator)', '2CF444A', 'ABS'),
('https://www.eutelsat.com/en/home.html#', 'Eutelsat S.A. is a European satellite operator. Providing coverage over the entire European continent, the Middle East, Africa, Asia and the Americas, it is the world\'s third largest satellite operator in terms of revenues.', 'Eutelsat 115 West B,Eutelsat 117 West B', 'Boeing', 'https://twitter.com/Eutelsat_SA?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor', 'https://en.wikipedia.org/wiki/Eutelsat', 'F7709F2', 'Eutelsat');

-- --------------------------------------------------------

--
-- Table structure for table `rockets`
--

CREATE TABLE `rockets` (
  `id` text DEFAULT NULL,
  `active` text DEFAULT NULL,
  `stages` text DEFAULT NULL,
  `boosters` text DEFAULT NULL,
  `cost_per_launch` text DEFAULT NULL,
  `success_rate_pct` text DEFAULT NULL,
  `first_flight` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `height__meters` text DEFAULT NULL,
  `height__feet` text DEFAULT NULL,
  `diameter__meters` text DEFAULT NULL,
  `diameter__feet` text DEFAULT NULL,
  `mass__kg` text DEFAULT NULL,
  `mass__lb` text DEFAULT NULL,
  `payload_weights__id_1` text DEFAULT NULL,
  `payload_weights__name_1` text DEFAULT NULL,
  `payload_weights__kg_1` text DEFAULT NULL,
  `payload_weights__lb_1` text DEFAULT NULL,
  `payload_weights__id_2` text DEFAULT NULL,
  `payload_weights__name_2` text DEFAULT NULL,
  `payload_weights__kg_2` text DEFAULT NULL,
  `payload_weights__lb_2` text DEFAULT NULL,
  `payload_weights__id_3` text DEFAULT NULL,
  `payload_weights__name_3` text DEFAULT NULL,
  `payload_weights__kg_3` text DEFAULT NULL,
  `payload_weights__lb_3` text DEFAULT NULL,
  `payload_weights__id_4` text DEFAULT NULL,
  `payload_weights__name_4` text DEFAULT NULL,
  `payload_weights__kg_4` text DEFAULT NULL,
  `payload_weights__lb_4` text DEFAULT NULL,
  `first_stage__reusable` text DEFAULT NULL,
  `first_stage__engines` text DEFAULT NULL,
  `first_stage__fuel_amount_tons` text DEFAULT NULL,
  `first_stage__burn_time_sec` text DEFAULT NULL,
  `first_stage__thrust_sea_level__kN` text DEFAULT NULL,
  `first_stage__thrust_sea_level__lbf` text DEFAULT NULL,
  `first_stage__thrust_vacuum__kN` text DEFAULT NULL,
  `first_stage__thrust_vacuum__lbf` text DEFAULT NULL,
  `second_stage__reusable` text DEFAULT NULL,
  `second_stage__engines` text DEFAULT NULL,
  `second_stage__fuel_amount_tons` text DEFAULT NULL,
  `second_stage__burn_time_sec` text DEFAULT NULL,
  `second_stage__thrust__kN` text DEFAULT NULL,
  `second_stage__thrust__lbf` text DEFAULT NULL,
  `second_stage__payloads__option_1` text DEFAULT NULL,
  `second_stage__payloads__composite_fairing__|__height_meters` text DEFAULT NULL,
  `second_stage__payloads__composite_fairing__|__height_feet` text DEFAULT NULL,
  `second_stage__payloads__composite_fairing__|__diameter_meters` text DEFAULT NULL,
  `second_stage__payloads__composite_fairing__|__diameter_feet` text DEFAULT NULL,
  `engines__number` text DEFAULT NULL,
  `engines__type` text DEFAULT NULL,
  `engines__version` text DEFAULT NULL,
  `engines__layout` text DEFAULT NULL,
  `engines__isp__sea_level` text DEFAULT NULL,
  `engines__isp__vacuum` text DEFAULT NULL,
  `engines__engine_loss_max` text DEFAULT NULL,
  `engines__propellant_1` text DEFAULT NULL,
  `engines__propellant_2` text DEFAULT NULL,
  `engines__thrust_sea_level__kN` text DEFAULT NULL,
  `engines__thrust_sea_level__lbf` text DEFAULT NULL,
  `engines__thrust_vacuum__kN` text DEFAULT NULL,
  `engines__thrust_vacuum__lbf` text DEFAULT NULL,
  `engines__thrust_to_weight` text DEFAULT NULL,
  `landing_legs__number` text DEFAULT NULL,
  `landing_legs__material` text DEFAULT NULL,
  `flickr_images__001` text DEFAULT NULL,
  `flickr_images__002` text DEFAULT NULL,
  `wikipedia` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rocket_id` text DEFAULT NULL,
  `rocket_name` text DEFAULT NULL,
  `rocket_type` text DEFAULT NULL,
  `second_stage__payloads__option_2` text DEFAULT NULL,
  `flickr_images__003` text DEFAULT NULL,
  `flickr_images__004` text DEFAULT NULL,
  `flickr_images__005` text DEFAULT NULL,
  `flickr_images__006` text DEFAULT NULL,
  `first_stage__cores` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rockets`
--

INSERT INTO `rockets` (`id`, `active`, `stages`, `boosters`, `cost_per_launch`, `success_rate_pct`, `first_flight`, `country`, `company`, `height__meters`, `height__feet`, `diameter__meters`, `diameter__feet`, `mass__kg`, `mass__lb`, `payload_weights__id_1`, `payload_weights__name_1`, `payload_weights__kg_1`, `payload_weights__lb_1`, `payload_weights__id_2`, `payload_weights__name_2`, `payload_weights__kg_2`, `payload_weights__lb_2`, `payload_weights__id_3`, `payload_weights__name_3`, `payload_weights__kg_3`, `payload_weights__lb_3`, `payload_weights__id_4`, `payload_weights__name_4`, `payload_weights__kg_4`, `payload_weights__lb_4`, `first_stage__reusable`, `first_stage__engines`, `first_stage__fuel_amount_tons`, `first_stage__burn_time_sec`, `first_stage__thrust_sea_level__kN`, `first_stage__thrust_sea_level__lbf`, `first_stage__thrust_vacuum__kN`, `first_stage__thrust_vacuum__lbf`, `second_stage__reusable`, `second_stage__engines`, `second_stage__fuel_amount_tons`, `second_stage__burn_time_sec`, `second_stage__thrust__kN`, `second_stage__thrust__lbf`, `second_stage__payloads__option_1`, `second_stage__payloads__composite_fairing__|__height_meters`, `second_stage__payloads__composite_fairing__|__height_feet`, `second_stage__payloads__composite_fairing__|__diameter_meters`, `second_stage__payloads__composite_fairing__|__diameter_feet`, `engines__number`, `engines__type`, `engines__version`, `engines__layout`, `engines__isp__sea_level`, `engines__isp__vacuum`, `engines__engine_loss_max`, `engines__propellant_1`, `engines__propellant_2`, `engines__thrust_sea_level__kN`, `engines__thrust_sea_level__lbf`, `engines__thrust_vacuum__kN`, `engines__thrust_vacuum__lbf`, `engines__thrust_to_weight`, `landing_legs__number`, `landing_legs__material`, `flickr_images__001`, `flickr_images__002`, `wikipedia`, `description`, `rocket_id`, `rocket_name`, `rocket_type`, `second_stage__payloads__option_2`, `flickr_images__003`, `flickr_images__004`, `flickr_images__005`, `flickr_images__006`, `first_stage__cores`) VALUES
('1', 'FALSE', '2', '0', '6700000', '40', '3/24/2006', 'Republic of the Marshall Islands', 'SpaceX', '22.25', '73', '1.68', '5.5', '30146', '66460', 'leo', 'Low Earth Orbit', '450', '992', '', '', '', '', '', '', '', '', '', '', '', '', 'FALSE', '1', '44.3', '169', '420', '94000', '480', '110000', 'FALSE', '1', '3.38', '378', '31', '7000', 'composite fairing', '3.5', '11.5', '1.5', '4.9', '1', 'merlin', '1C', 'single', '267', '304', '0', 'liquid oxygen', 'RP-1 kerosene', '420', '94000', '480', '110000', '96', '0', NULL, 'https://imgur.com/DaCfMsj.jpg', 'https://imgur.com/azYafd8.jpg', 'https://en.wikipedia.org/wiki/Falcon_1', 'The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth.', 'falcon1', 'Falcon 1', 'rocket', '', '', '', '', '', ''),
('2', 'TRUE', '2', '0', '50000000', '97', '6/4/2010', 'United States', 'SpaceX', '70', '229.6', '3.7', '12', '549054', '1207920', 'leo', 'Low Earth Orbit', '22800', '50265', 'gto', 'Geosynchronous Transfer Orbit', '8300', '18300', 'mars', 'Mars Orbit', '4020', '8860', '', '', '', '', 'TRUE', '9', '385', '162', '7607', '1710000', '8227', '1849500', 'FALSE', '1', '90', '397', '934', '210000', 'dragon', '13.1', '43', '5.2', '17.1', '9', 'merlin', '1D+', 'octaweb', '288', '312', '2', 'liquid oxygen', 'RP-1 kerosene', '845', '190000', '914', '205500', '180.1', '4', 'carbon fiber', 'https://farm1.staticflickr.com/929/28787338307_3453a11a77_b.jpg', 'https://farm4.staticflickr.com/3955/32915197674_eee74d81bb_b.jpg', 'https://en.wikipedia.org/wiki/Falcon_9', 'Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit.', 'falcon9', 'Falcon 9', 'rocket', 'composite fairing', 'https://farm1.staticflickr.com/293/32312415025_6841e30bf1_b.jpg', 'https://farm1.staticflickr.com/623/23660653516_5b6cb301d1_b.jpg', 'https://farm6.staticflickr.com/5518/31579784413_d853331601_b.jpg', 'https://farm1.staticflickr.com/745/32394687645_a9c54a34ef_b.jpg', ''),
('3', 'TRUE', '2', '2', '90000000', '100', '2/6/2018', 'United States', 'SpaceX', '70', '229.6', '12.2', '39.9', '1420788', '3125735', 'leo', 'Low Earth Orbit', '63800', '140660', 'gto', 'Geosynchronous Transfer Orbit', '26700', '58860', 'mars', 'Mars Orbit', '16800', '37040', 'pluto', 'Pluto Orbit', '3500', '7720', 'TRUE', '27', '1155', '162', '22819', '5130000', '24681', '5548500', 'FALSE', '1', '90', '397', '934', '210000', 'dragon', '13.1', '43', '5.2', '17.1', '27', 'merlin', '1D+', 'octaweb', '288', '312', '6', 'liquid oxygen', 'RP-1 kerosene', '845', '190000', '914', '205500', '180.1', '12', 'carbon fiber', 'https://farm5.staticflickr.com/4599/38583829295_581f34dd84_b.jpg', 'https://farm5.staticflickr.com/4645/38583830575_3f0f7215e6_b.jpg', 'https://en.wikipedia.org/wiki/Falcon_Heavy', 'With the ability to lift into orbit over 54 metric tons (119,000 lb)--a mass equivalent to a 737 jetliner loaded with passengers, crew, luggage and fuel--Falcon Heavy can lift more than twice the payload of the next closest operational vehicle, the Delta IV Heavy, at one-third the cost.', 'falconheavy', 'Falcon Heavy', 'rocket', 'composite fairing', 'https://farm5.staticflickr.com/4696/40126460511_b15bf84c85_b.jpg', 'https://farm5.staticflickr.com/4711/40126461411_aabc643fd8_b.jpg', '', '', '3'),
('4', 'FALSE', '2', '0', '7000000', '0', '12/1/2021', 'United States', 'SpaceX', '118', '387', '9', '30', '1335000', '2943000', 'leo', 'Low Earth Orbit', '150000', '330000', 'mars', 'Mars Orbit', '100000', '220000', 'moon', 'Moon Orbit', '100000', '220000', '', '', '', '', 'TRUE', '37', '3300', NULL, '128000', '28775544', '138000', '31023634', 'TRUE', '6', '1200', NULL, '1957', '440000', 'Spaceship', NULL, NULL, NULL, NULL, '37', 'raptor', '', NULL, '330', '380', NULL, 'liquid oxygen', 'liquid methane', '1780', '400000', '1960', '440000', '107', '6', 'stainless steel', 'https://live.staticflickr.com/65535/48954138962_ee541e6755_b.jpg', 'https://live.staticflickr.com/65535/48953946911_e60c5bcc5c_b.jpg', 'https://en.wikipedia.org/wiki/SpaceX_Starship', 'Starship and Super Heavy Rocket represent a fully reusable transportation system designed to service all Earth orbit needs as well as the Moon and Mars. This two-stage vehicle — composed of the Super Heavy rocket (booster) and Starship (ship) — will eventually replace Falcon 9, Falcon Heavy and Dragon.', 'starship', 'Starship', 'rocket', 'composite fairing', 'https://live.staticflickr.com/65535/48954138922_9c42173f08_b.jpg', 'https://live.staticflickr.com/65535/48953947006_313f01ec93_b.jpg', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
