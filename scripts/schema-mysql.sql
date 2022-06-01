CREATE TABLE IF NOT EXISTS vets (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  INDEX(last_name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS specialties (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(255),
  INDEX(description)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS vet_specialties (
  vet_id BIGINT NOT NULL,
  speciality_id BIGINT NOT NULL,
  FOREIGN KEY (vet_id) REFERENCES vets(id),
  FOREIGN KEY (speciality_id) REFERENCES specialties(id),
  UNIQUE (vet_id,speciality_id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS types (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80),
  INDEX(name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS owners (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  address VARCHAR(255),
  city VARCHAR(80),
  telephone VARCHAR(20),
  INDEX(last_name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS pets (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),
  birth_date DATE,
  type_id BIGINT NOT NULL,
  owner_id BIGINT,
  INDEX(name),
  FOREIGN KEY (owner_id) REFERENCES owners(id),
  FOREIGN KEY (type_id) REFERENCES types(id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS visits (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  pet_id BIGINT,
  visit_date DATE,
  description VARCHAR(255),
  FOREIGN KEY (pet_id) REFERENCES pets(id)
) engine=InnoDB;