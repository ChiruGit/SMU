CREATE TABLE `test`.`baseball` (
    `Team` VARCHAR(45),
    `Player` VARCHAR(45),
    `Salary` INT,
    `Position` VARCHAR(45)
);
  
LOAD DATA LOCAL INFILE
'C:/Users/zach/Google Drive/SMU/MSDS 7330 - File Organization and Database Management/Week 8/baseball_salaries_2003.txt'
INTO TABLE test.baseball
FIELDS TERMINATED BY ':'
LINES TERMINATED BY '\n'
IGNORE 3 LINES;

SELECT Position, AVG(Salary) AS avgSal
FROM test.baseball
GROUP BY Position
ORDER BY avgSal DESC;