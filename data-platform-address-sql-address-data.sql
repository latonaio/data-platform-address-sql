CREATE TABLE `data_platform_address_address_data`
(
    `AddressID`             int(12) NOT NULL,
    `ValidityEndDate`       date NOT NULL,
    `ValidityStartDate`     date NOT NULL,
    `PostalCode`            varchar(10) NOT NULL,
    `LocalRegion`           varchar(3) NOT NULL,        -- 名称変更
    `Country`               varchar(3) NOT NULL,
    `GlobalRegion`          varchar(3) NOT NULL,        -- 新規追加
    `TimeZone`              varchar(3) NOT NULL,        -- 新規追加
    `District`              varchar(6) DEFAULT NULL,    -- 新規追加
    `StreetName`            varchar(200) NOT NULL,
    `CityName`              varchar(200) NOT NULL,
    `Builiding`             varchar(100) DEFAULT NULL,  -- 新規追加
    `Floor`                 int(4) DEFAULT NULL,        -- 新規追加
    `Room`                  int(8) DEFAULT NULL,        -- 新規追加
    
    PRIMARY KEY (`AddressID`, `ValidityEndDate`),

    CONSTRAINT `DataPlatformAddressAddressDataPostalCode_fk` FOREIGN KEY (`PostalCode`, `LocalRegion`, `Country`, `GlobalRegion`, `TimeZone`) REFERENCES `data_platform_postal_code_postal_code_data` (`PostalCode`, `LocalRegion`, `Country`, `GlobalRegion`, `TimeZone`),
    CONSTRAINT `DataPlatformAddressAddressDataDistrict_fk` FOREIGN KEY (`District`, `Country`) REFERENCES `data_platform_district_district_data` (`District`, `Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
