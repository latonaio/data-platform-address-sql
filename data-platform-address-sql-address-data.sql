CREATE TABLE `data_platform_address_address_data`
(
    `AddressID`             int(12) NOT NULL,
    `ValidityEndDate`       date NOT NULL,
    `ValidityStartDate`     date NOT NULL,
    `PostalCode`            varchar(10) NOT NULL,
    `LocalRegion`           varchar(3) NOT NULL,
    `Country`               varchar(3) NOT NULL,
    `GlobalRegion`          varchar(3) NOT NULL,
    `TimeZone`              varchar(3) NOT NULL,
    `District`              varchar(6) DEFAULT NULL,
    `StreetName`            varchar(200) NOT NULL,
    `CityName`              varchar(200) NOT NULL,
    `Building`              varchar(100) DEFAULT NULL,
    `Floor`                 int(4) DEFAULT NULL,
    `Room`                  int(8) DEFAULT NULL,
    
    PRIMARY KEY (`AddressID`, `ValidityEndDate`),

    CONSTRAINT `DataPlatformAddressAddressDataPostalCode_fk` FOREIGN KEY (`PostalCode`, `LocalRegion`, `Country`, `GlobalRegion`, `TimeZone`) REFERENCES `data_platform_postal_code_postal_code_data` (`PostalCode`, `LocalRegion`, `Country`, `GlobalRegion`, `TimeZone`),
    CONSTRAINT `DataPlatformAddressAddressDataDistrict_fk` FOREIGN KEY (`District`, `Country`) REFERENCES `data_platform_district_district_data` (`District`, `Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
