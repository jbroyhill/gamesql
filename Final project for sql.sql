use broyhillj_sample;
-- step 1, change PK & name
INSERT INTO `broyhillj_sample`.`employees` (`EmployeeID`, `EmployeeName`, `EmployeeTypeID`, `PayTypeID`, `CompanyID`, `ProjectID`) VALUES ('21', 'Jared Broyhill', '4', '2', '1', '1');
-- step 2
INSERT INTO `broyhillj_sample`.`project` (`ProjectID`, `ProjectName`, `ProjectShipDate`, `ProjectStateID`, `ProjectTypeID`, `CompanyID`) VALUES ('6', 'PooPoo', '03-04-30', '3', '1', '1');
INSERT INTO `broyhillj_sample`.`project` (`ProjectID`, `ProjectName`, `ProjectShipDate`, `ProjectStateID`, `ProjectTypeID`, `CompanyID`) VALUES ('7', 'PeePee', '09-20-21', '1', '2', '1');
INSERT INTO `broyhillj_sample`.`project` (`ProjectID`, `ProjectName`, `ProjectShipDate`, `ProjectStateID`, `ProjectTypeID`, `CompanyID`) VALUES ('8', 'Kite', '04-04-24', '2', '1', '1');
INSERT INTO `broyhillj_sample`.`project` (`ProjectID`, `ProjectName`, `ProjectShipDate`, `ProjectStateID`, `ProjectTypeID`, `CompanyID`) VALUES ('9', 'Hamburger', '07-30-23', '2', '2', '1');
INSERT INTO `broyhillj_sample`.`project` (`ProjectID`, `ProjectName`, `ProjectShipDate`, `ProjectStateID`, `ProjectTypeID`, `CompanyID`) VALUES ('10', 'Cow', '12-25-2019', '1', '1', '1');
-- step 3
INSERT INTO `broyhillj_sample`.`inventory` (`ItemID`, `Quantity`, `Title`, `CompID`, `Price`) VALUES ('1', '100000', 'PooPoo', '1', '60');
INSERT INTO `broyhillj_sample`.`inventory` (`ItemID`, `Quantity`, `Title`, `CompID`, `Price`) VALUES ('2', '100000', 'PeePee', '1', '60');
INSERT INTO `broyhillj_sample`.`inventory` (`ItemID`, `Quantity`, `Title`, `CompID`, `Price`) VALUES ('3', '100000', 'Hamburger', '1', '60');
INSERT INTO `broyhillj_sample`.`inventory` (`ItemID`, `Quantity`, `Title`, `CompID`, `Price`) VALUES ('4', '100000', 'Kite', '1', '60');
INSERT INTO `broyhillj_sample`.`inventory` (`ItemID`, `Quantity`, `Title`, `CompID`, `Price`) VALUES ('5', '100000', 'Cow', '1', '60');
-- step 4
select * from project LEFT JOIN projectstate using (statedescription);
select Title, Price from inventory right join project using (ProjectTypeID, ProjectName);