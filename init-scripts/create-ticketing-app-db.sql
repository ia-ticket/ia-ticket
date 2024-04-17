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
    costumer_id INT,
    place_number VARCHAR(255),
    ticket_status VARCHAR(50) DEFAULT 'available' NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);
