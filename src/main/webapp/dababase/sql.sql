CREATE TABLE `mobileshop`.`accounts` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `usermail` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `role` INT NOT NULL,
  `fullname` VARCHAR(45) NULL DEFAULT 'user',
  `phonenumber` VARCHAR(45) NULL DEFAULT '0987654321',
  PRIMARY KEY (`id`, `usermail`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


CREATE TABLE `mobileshop`.`products` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `price` FLOAT NOT NULL DEFAULT 0.0,
  `src` VARCHAR(255) NOT NULL,
  `type` VARCHAR(45) NULL DEFAULT 'cellphones',
  `brand` VARCHAR(45) NULL DEFAULT 'apple',
  `quantity` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


CREATE TABLE `mobileshop`.`detailorder` (
  `id` VARCHAR(45) NOT NULL,
  `fullname` NVARCHAR(45) NOT NULL,
  `phonenumber` VARCHAR(45) NOT NULL,
  `address` TEXT NOT NULL,
  `note` TEXT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

