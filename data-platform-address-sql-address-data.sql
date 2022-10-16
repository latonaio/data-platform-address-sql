CREATE TABLE `data_platform_address_address_data`
(
    `AddressID`             int(10) NOT NULL,
    `ValidityEndDate`       varchar(80) NOT NULL,
    `ValidityStartDate`     varchar(80) DEFAULT NULL,
    `PostalCode`            varchar(10) DEFAULT NULL,
    `LocalRegion`           varchar(3) DEFAULT NULL,    -- 名称変更
    `Country`               varchar(3) DEFAULT NULL,
    `GlobalRegion`          varchar(3) DEFAULT NULL,    -- 新規追加
    `District`              varchar(6) DEFAULT NULL,    -- 新規追加
    `StreetName`            varchar(200) DEFAULT NULL,
    `CityName`              varchar(200) DEFAULT NULL,
    PRIMARY KEY (`AddressID`, `ValidityEndDate`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
