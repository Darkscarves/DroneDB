-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2019 at 01:22 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DroneTest`
--

-- --------------------------------------------------------

--
-- Table structure for table `ArrivalChecklist`
--

CREATE TABLE `ArrivalChecklist` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `SiteSurvey` tinyint(1) DEFAULT NULL,
  `FlightPlan` tinyint(1) DEFAULT NULL,
  `Airframe` tinyint(1) DEFAULT NULL,
  `Camera` tinyint(1) DEFAULT NULL,
  `Connections` tinyint(1) DEFAULT NULL,
  `Propellers` tinyint(1) DEFAULT NULL,
  `CalibrationPlatform` tinyint(1) DEFAULT NULL,
  `GroundStation` tinyint(1) DEFAULT NULL,
  `Monitor` tinyint(1) DEFAULT NULL,
  `CrewIdBadges` tinyint(1) DEFAULT NULL,
  `HardHat` tinyint(1) DEFAULT NULL,
  `Radio` tinyint(1) DEFAULT NULL,
  `FirstAid` tinyint(1) DEFAULT NULL,
  `Extinguisher` tinyint(1) DEFAULT NULL,
  `Signs` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BatteryChargeLogs`
--

CREATE TABLE `BatteryChargeLogs` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `BatteryNo` varchar(255) DEFAULT NULL,
  `BatteryResidual` varchar(255) DEFAULT NULL,
  `ChargeDate` varchar(255) DEFAULT NULL,
  `ChargeInput` varchar(255) DEFAULT NULL,
  `FlightDuration` varchar(255) DEFAULT NULL,
  `PreFlight` varchar(255) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EmbarkationChecklist`
--

CREATE TABLE `EmbarkationChecklist` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `GroundStation` tinyint(1) DEFAULT NULL,
  `CameraMonitor` tinyint(1) DEFAULT NULL,
  `Receiver` tinyint(1) DEFAULT NULL,
  `TelemetryReceiver` tinyint(1) DEFAULT NULL,
  `Laptop` tinyint(1) DEFAULT NULL,
  `MobilePhone` tinyint(1) DEFAULT NULL,
  `Anemometer` tinyint(1) DEFAULT NULL,
  `FirstAid` tinyint(1) DEFAULT NULL,
  `CrewIdentification` tinyint(1) NOT NULL,
  `HardHat` tinyint(1) DEFAULT NULL,
  `Radio` tinyint(1) DEFAULT NULL,
  `Clothing` tinyint(1) DEFAULT NULL,
  `AirNavigationMap` tinyint(1) DEFAULT NULL,
  `Checklist` tinyint(1) DEFAULT NULL,
  `Notepad` tinyint(1) DEFAULT NULL,
  `SiteAssessment` tinyint(1) DEFAULT NULL,
  `Signs` tinyint(1) DEFAULT NULL,
  `FlightBattery` tinyint(1) DEFAULT NULL,
  `TransmitterBattery` tinyint(1) DEFAULT NULL,
  `CameraBattery` tinyint(1) DEFAULT NULL,
  `StationBattery` tinyint(1) DEFAULT NULL,
  `ChargerBattery` tinyint(1) DEFAULT NULL,
  `PhoneBattery` tinyint(1) DEFAULT NULL,
  `Airframe` tinyint(1) DEFAULT NULL,
  `CameraMount` tinyint(1) DEFAULT NULL,
  `Transmitters` tinyint(1) NOT NULL,
  `CalibrationPlatform` tinyint(1) DEFAULT NULL,
  `CameraLens` tinyint(1) DEFAULT NULL,
  `CameraConnection` tinyint(1) DEFAULT NULL,
  `CameraMemory` tinyint(1) DEFAULT NULL,
  `CameraLanyard` tinyint(1) DEFAULT NULL,
  `AttachmentBolt` tinyint(1) DEFAULT NULL,
  `MultiFunctionCharger` tinyint(1) DEFAULT NULL,
  `RequiredCharger` tinyint(1) DEFAULT NULL,
  `BatteryChecker` tinyint(1) DEFAULT NULL,
  `Screwdrivers` tinyint(1) DEFAULT NULL,
  `AllenKeys` tinyint(1) DEFAULT NULL,
  `Pliers` tinyint(1) DEFAULT NULL,
  `CableTies` tinyint(1) DEFAULT NULL,
  `SideCutters` tinyint(1) DEFAULT NULL,
  `PropellerNuts` tinyint(1) DEFAULT NULL,
  `SpareProps` tinyint(1) DEFAULT NULL,
  `SocketSet` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FlightLog`
--

CREATE TABLE `FlightLog` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `TakeOffTime` varchar(255) DEFAULT NULL,
  `LandingTime` varchar(255) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL,
  `Aircraft` varchar(255) DEFAULT NULL,
  `AircraftSystem` varchar(255) DEFAULT NULL,
  `BatteryNo` varchar(255) DEFAULT NULL,
  `Pilot` varchar(255) DEFAULT NULL,
  `Observer` varchar(255) DEFAULT NULL,
  `PayloadOperator` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `FlightPurpose` varchar(255) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `IncidentLog`
--

CREATE TABLE `IncidentLog` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `IncidentTime` varchar(255) DEFAULT NULL,
  `Damage` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `ActionTaken` varchar(255) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MaintenanceLog`
--

CREATE TABLE `MaintenanceLog` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Reason` varchar(255) DEFAULT NULL,
  `WorkDone` varchar(255) DEFAULT NULL,
  `PartsReplaced` varchar(255) DEFAULT NULL,
  `SystemTested` varchar(255) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `OnSiteSurvey`
--

CREATE TABLE `OnSiteSurvey` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Pilot` varchar(255) DEFAULT NULL,
  `Observer` varchar(255) DEFAULT NULL,
  `WindSpeed` varchar(255) DEFAULT NULL,
  `Direction` varchar(255) DEFAULT NULL,
  `Obstruction` varchar(255) DEFAULT NULL,
  `ViewLimitations` varchar(255) DEFAULT NULL,
  `People` varchar(255) DEFAULT NULL,
  `Livestock` varchar(255) DEFAULT NULL,
  `Temperature` varchar(255) DEFAULT NULL,
  `Visibility` varchar(255) DEFAULT NULL,
  `Surface` varchar(255) DEFAULT NULL,
  `Permission` varchar(255) DEFAULT NULL,
  `Public` varchar(255) DEFAULT NULL,
  `AirTraffic` varchar(255) DEFAULT NULL,
  `Communication` varchar(255) DEFAULT NULL,
  `Proximity` varchar(255) DEFAULT NULL,
  `TakeOffArea` varchar(255) DEFAULT NULL,
  `LandingArea` varchar(255) DEFAULT NULL,
  `OperationalZone` varchar(255) DEFAULT NULL,
  `EmergencyArea` varchar(255) DEFAULT NULL,
  `HoldingArea` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `OperationFlightPlan`
--

CREATE TABLE `OperationFlightPlan` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `JobNo` varchar(255) DEFAULT NULL,
  `Version` varchar(255) DEFAULT NULL,
  `Pilot` varchar(255) DEFAULT NULL,
  `Observer` varchar(255) DEFAULT NULL,
  `PayloadOperator` varchar(255) DEFAULT NULL,
  `Helper` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Elevation` varchar(255) DEFAULT NULL,
  `VehicularAccess` varchar(255) DEFAULT NULL,
  `FlightPurpose` varchar(255) DEFAULT NULL,
  `OperationType` varchar(255) DEFAULT NULL,
  `DateWorkRequired` varchar(255) DEFAULT NULL,
  `MissionDuration` varchar(255) DEFAULT NULL,
  `CruisingAltitude` varchar(255) DEFAULT NULL,
  `MaxAltitude` varchar(255) DEFAULT NULL,
  `MaxDistance` varchar(255) DEFAULT NULL,
  `SatellitePic` varchar(255) DEFAULT NULL,
  `BAGViewerPic` varchar(255) DEFAULT NULL,
  `CrewPosition` varchar(255) DEFAULT NULL,
  `Flightbox` varchar(255) DEFAULT NULL,
  `AltLandingSites` varchar(255) DEFAULT NULL,
  `Distances` varchar(255) DEFAULT NULL,
  `RiskAssessment` varchar(255) DEFAULT NULL,
  `LocalAirTraffic` varchar(255) DEFAULT NULL,
  `RegionalAirTraffic` varchar(255) DEFAULT NULL,
  `MilitaryControl` varchar(255) DEFAULT NULL,
  `LowFlyingArea` varchar(255) DEFAULT NULL,
  `Airspace` varchar(255) DEFAULT NULL,
  `CivilMilitary` varchar(255) DEFAULT NULL,
  `ATCPermission` varchar(255) DEFAULT NULL,
  `MilitaryLowFlying` varchar(255) DEFAULT NULL,
  `Prohibited` varchar(255) DEFAULT NULL,
  `NOTAMAffect` varchar(255) DEFAULT NULL,
  `NOTAMpublished` varchar(255) DEFAULT NULL,
  `HelpdeskConsulted` varchar(255) DEFAULT NULL,
  `VisualFlightRules` varchar(255) DEFAULT NULL,
  `Distance150` varchar(255) DEFAULT NULL,
  `Distance50` varchar(255) DEFAULT NULL,
  `HorizontalDistance` varchar(255) NOT NULL,
  `Class1Flight` varchar(255) DEFAULT NULL,
  `TUG` varchar(255) DEFAULT NULL,
  `FlightReported` varchar(255) DEFAULT NULL,
  `Terrain` varchar(255) DEFAULT NULL,
  `OtherAircraft` varchar(255) DEFAULT NULL,
  `Hazards` varchar(255) DEFAULT NULL,
  `Restrictions` varchar(255) DEFAULT NULL,
  `Sensitives` varchar(255) DEFAULT NULL,
  `Permission` varchar(255) DEFAULT NULL,
  `Weather` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PostFlightChecklist`
--

CREATE TABLE `PostFlightChecklist` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Touchdown` tinyint(1) DEFAULT NULL,
  `PowerDown` tinyint(1) DEFAULT NULL,
  `Removal` tinyint(1) DEFAULT NULL,
  `DataRecording` tinyint(1) DEFAULT NULL,
  `Transmitter` tinyint(1) DEFAULT NULL,
  `Camera` tinyint(1) DEFAULT NULL,
  `Airframe` tinyint(1) DEFAULT NULL,
  `Battery` tinyint(1) DEFAULT NULL,
  `MemoryCard` tinyint(1) DEFAULT NULL,
  `Review` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PreFlightChecklist`
--

CREATE TABLE `PreFlightChecklist` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Airframe` tinyint(1) DEFAULT NULL,
  `FlightBattery` tinyint(1) DEFAULT NULL,
  `Transmitters` tinyint(1) DEFAULT NULL,
  `Camera` tinyint(1) DEFAULT NULL,
  `AirframeLevel` tinyint(1) NOT NULL,
  `ConnectBattery` tinyint(1) NOT NULL,
  `SelfDiagnostic` tinyint(1) DEFAULT NULL,
  `Monitor` tinyint(1) DEFAULT NULL,
  `Calibration` tinyint(1) NOT NULL,
  `SaveCalibration` tinyint(1) DEFAULT NULL,
  `CameraPlatform` tinyint(1) NOT NULL,
  `TelemetryLink` tinyint(1) DEFAULT NULL,
  `FlightPlan` tinyint(1) DEFAULT NULL,
  `StartRecording` tinyint(1) DEFAULT NULL,
  `AircraftAlignment` tinyint(1) DEFAULT NULL,
  `Crew` tinyint(1) DEFAULT NULL,
  `Clearance` tinyint(1) DEFAULT NULL,
  `PowerUp` tinyint(1) DEFAULT NULL,
  `TakeOff` tinyint(1) DEFAULT NULL,
  `Communication` tinyint(1) DEFAULT NULL,
  `Landing` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PreSitesSurvey`
--

CREATE TABLE `PreSitesSurvey` (
  `Id` int(11) NOT NULL,
  `NaamStudent` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `JobNo` varchar(255) NOT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Altitude` varchar(255) DEFAULT NULL,
  `WorkRequired` varchar(255) DEFAULT NULL,
  `DateWorkRequired` varchar(255) DEFAULT NULL,
  `DownloadedToGround` tinyint(1) DEFAULT NULL,
  `VehicularAccess` tinyint(1) DEFAULT NULL,
  `Pilot` varchar(255) DEFAULT NULL,
  `Observer` varchar(255) DEFAULT NULL,
  `UAVRegistration` varchar(255) DEFAULT NULL,
  `Helper1` varchar(255) DEFAULT NULL,
  `Helper2` varchar(255) DEFAULT NULL,
  `Airspace` varchar(255) DEFAULT NULL,
  `Terrain` varchar(255) DEFAULT NULL,
  `Proximities` varchar(255) DEFAULT NULL,
  `Hazards` varchar(255) DEFAULT NULL,
  `Restrictions` varchar(255) DEFAULT NULL,
  `Sensitivities` varchar(255) DEFAULT NULL,
  `People` varchar(255) DEFAULT NULL,
  `Livestock` varchar(255) DEFAULT NULL,
  `Permission` varchar(255) DEFAULT NULL,
  `Access` varchar(255) DEFAULT NULL,
  `Footpaths` varchar(255) DEFAULT NULL,
  `Alternate` varchar(255) DEFAULT NULL,
  `RiskReduction` varchar(255) DEFAULT NULL,
  `Weather` varchar(255) DEFAULT NULL,
  `NOTAMS` varchar(255) DEFAULT NULL,
  `LocalAirTraffic` varchar(255) DEFAULT NULL,
  `RegionalAirTraffic` varchar(255) DEFAULT NULL,
  `MilitaryControl` varchar(255) DEFAULT NULL,
  `NoticeToAirmen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ArrivalChecklist`
--
ALTER TABLE `ArrivalChecklist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `BatteryChargeLogs`
--
ALTER TABLE `BatteryChargeLogs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `EmbarkationChecklist`
--
ALTER TABLE `EmbarkationChecklist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `FlightLog`
--
ALTER TABLE `FlightLog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `IncidentLog`
--
ALTER TABLE `IncidentLog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `MaintenanceLog`
--
ALTER TABLE `MaintenanceLog`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `OnSiteSurvey`
--
ALTER TABLE `OnSiteSurvey`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `OperationFlightPlan`
--
ALTER TABLE `OperationFlightPlan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `PostFlightChecklist`
--
ALTER TABLE `PostFlightChecklist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `PreFlightChecklist`
--
ALTER TABLE `PreFlightChecklist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `PreSitesSurvey`
--
ALTER TABLE `PreSitesSurvey`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ArrivalChecklist`
--
ALTER TABLE `ArrivalChecklist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BatteryChargeLogs`
--
ALTER TABLE `BatteryChargeLogs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `EmbarkationChecklist`
--
ALTER TABLE `EmbarkationChecklist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `FlightLog`
--
ALTER TABLE `FlightLog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `IncidentLog`
--
ALTER TABLE `IncidentLog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `MaintenanceLog`
--
ALTER TABLE `MaintenanceLog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `OnSiteSurvey`
--
ALTER TABLE `OnSiteSurvey`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `OperationFlightPlan`
--
ALTER TABLE `OperationFlightPlan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `PostFlightChecklist`
--
ALTER TABLE `PostFlightChecklist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `PreFlightChecklist`
--
ALTER TABLE `PreFlightChecklist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `PreSitesSurvey`
--
ALTER TABLE `PreSitesSurvey`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
