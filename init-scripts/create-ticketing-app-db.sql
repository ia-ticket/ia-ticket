CREATE TABLE shows (
    show_id SERIAL PRIMARY KEY,
    show_name VARCHAR(255) NOT NULL,
    date_and_time TIMESTAMP NOT NULL,
    place VARCHAR(255) NOT NULL,
    show_description VARCHAR(255),
    inventory INT NOT NULL
);

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    show_id INT REFERENCES shows(show_id) NOT NULL,
    costumer_email VARCHAR(50),
    place_number VARCHAR(255),
    ticket_status VARCHAR(50) DEFAULT 'available' NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO shows (show_name, date_and_time, place, show_description, inventory) 
VALUES ('Keed Roast', '2024-05-30 18:00:00', 'Sala Luceafarul', 'Roast show', 2);

INSERT INTO shows (show_name, date_and_time, place, show_description, inventory) 
VALUES ('Barbierul din Sevilla', '2022-05-30 18:00:00', 'Opera Nationala', 'spectacol de opera', 1);

INSERT INTO shows (show_name, date_and_time, place, show_description, inventory) 
VALUES ('Show Horia Brenciu', '2024-07-12 18:00:00', 'Sala palatului', 'spectacol de muzica', 3);

INSERT INTO tickets (show_id, costumer_email, place_number, ticket_status, price) 
VALUES (1, NULL, 'A1', 'available', 250.00);

INSERT INTO tickets (show_id, costumer_email, place_number, ticket_status, price) 
VALUES (1, NULL, 'A2', 'available', 250.00);

INSERT INTO tickets (show_id, costumer_email, place_number, ticket_status, price) 
VALUES (2, NULL, '1', 'available', 550.00);

INSERT INTO tickets (show_id, costumer_email, place_number, ticket_status, price) 
VALUES (3, NULL, '1-K', 'available', 350.00);

INSERT INTO tickets (show_id, costumer_email, place_number, ticket_status, price) 
VALUES (3, NULL, '1-L', 'available', 350.00);

INSERT INTO tickets (show_id, costumer_email, place_number, ticket_status, price) 
VALUES (3, NULL, '1-M', 'available', 350.00);