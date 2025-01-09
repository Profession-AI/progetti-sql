-- Creazione delle tabelle
CREATE TABLE prodotto (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    prezzo DECIMAL(10, 2) NOT NULL
);

CREATE TABLE cliente (
    id INT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE ordini (
    id_prodotto INT,
    id_cliente INT,
    data DATE,
    FOREIGN KEY (id_prodotto) REFERENCES prodotto(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

-- Inserimento dei dati nella tabella 'prodotto'
INSERT INTO prodotto (id, nome, prezzo) VALUES
(1, 'Smartphone', 699.99),
(2, 'Laptop', 1099.99),
(3, 'Auricolari Bluetooth', 49.99),
(4, 'Monitor 4K', 299.99),
(5, 'Mouse Wireless', 19.99),
(6, 'Tastiera Meccanica', 89.99),
(7, 'Tablet', 499.99),
(8, 'Smartwatch', 199.99),
(9, 'Fotocamera DSLR', 799.99),
(10, 'Stampante', 129.99);

-- Inserimento dei dati nella tabella 'cliente'
INSERT INTO cliente (id, email) VALUES
(1, 'mario.rossi@example.com'),
(2, 'luigi.verdi@example.com'),
(3, 'anna.bianchi@example.com'),
(4, 'carla.neri@example.com'),
(5, 'giulia.ferri@example.com');

-- Inserimento dei dati nella tabella 'ordini'
INSERT INTO ordini (id_prodotto, id_cliente, data) VALUES
(1, 1, '2025-01-01'),
(2, 1, '2025-01-02'),
(3, 2, '2025-01-03'),
(4, 3, '2025-01-04'),
(5, 4, '2025-01-05'),
(6, 5, '2025-01-06'),
(7, 1, '2025-01-07'),
(8, 2, '2025-01-08'),
(9, 3, '2025-01-09'),
(10, 4, '2025-01-10'),
(1, 5, '2025-01-11'),
(2, 1, '2025-01-12'),
(3, 2, '2025-01-13'),
(4, 3, '2025-01-14'),
(5, 4, '2025-01-15'),
(6, 5, '2025-01-16'),
(7, 1, '2025-01-17'),
(8, 2, '2025-01-18'),
(9, 3, '2025-01-19'),
(10, 4, '2025-01-20');
