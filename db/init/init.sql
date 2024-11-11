CREATE TABLE IF NOT EXISTS components (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image_url VARCHAR(255)
);

INSERT INTO components (name, description, price, image_url) VALUES
('Teclado Razer BlackWidow', 'Teclado mecánico para gaming con iluminación RGB.', 129.99, 'https://cdn.panacompu.com/cdn-img/pv/razer-blackwidow-v3-general-view.jpg'),
('Tarjeta Gráfica NVIDIA RTX 3080', 'Potente tarjeta gráfica para gaming y renderizado.', 699.99, 'https://images.pcel.com/600/Hardware-Tarjetas-de-Video-ASUS-TUF-RTX3080TI-O12G-GAMING-393070-ApTB04qo0ostzYZL.jpg'),
('Laptop ASUS ROG Zephyrus', 'Laptop gaming de alto rendimiento con pantalla de 15 pulgadas.', 1599.99, 'https://www.amd.com/content/dam/amd/en/images/products/laptops/2201103-amd-advantage-laptop-generic-tile.png');
