-- 1) Crear la base de datos llamada "ecommerce"
CREATE DATABASE ecommerce;

-- Usar la base de datos "ecommerce"
USE ecommerce;

-- 2) Crear la tabla "usuarios"
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,               -- ID autoincremental como clave primaria
    nombre_usuario VARCHAR(50) NOT NULL,             -- Nombre de usuario obligatorio
    correo VARCHAR(100) NOT NULL UNIQUE,             -- Correo obligatorio y único
    contrasena VARCHAR(255) NOT NULL                 -- Contraseña obligatoria
);

-- 3) Crear la tabla "productos"
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,               -- ID autoincremental como clave primaria
    nombre VARCHAR(100) NOT NULL,                    -- Nombre del producto obligatorio
    descripcion TEXT,                                -- Descripción opcional del producto
    precio DECIMAL (10,2) NOT NULL,                  -- Precio con dos decimales, obligatorio
    stock INT NOT NULL                               -- Cantidad de productos disponibles, obligatorio
);

-- 4) Crear la tabla "carrito"
CREATE TABLE carrito (
    id INT AUTO_INCREMENT PRIMARY KEY,               -- ID autoincremental como clave primaria
    usuario_id INT NOT NULL,                         -- ID del usuario, obligatorio
    producto_id INT NOT NULL,                        -- ID del producto, obligatorio
    cantidad INT NOT NULL,                           -- Cantidad de productos, obligatorio
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id),   -- Clave foránea hacia la tabla usuarios
    FOREIGN KEY (producto_id) REFERENCES productos (id)  -- Clave foránea hacia la tabla productos
);

-- 5) Crear la tabla "compras"
CREATE TABLE compras (
    id INT AUTO_INCREMENT PRIMARY KEY,               -- ID autoincremental como clave primaria
    usuario_id INT NOT NULL,                         -- ID del usuario que realizó la compra
    total DECIMAL (10,2) NOT NULL,                   -- Total de la compra, obligatorio
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,        -- Fecha y hora de la compra con valor por defecto
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id)    -- Clave foránea hacia la tabla usuarios
);

-- 6) Insertar nuevos usuarios en la tabla "usuarios"
INSERT INTO usuarios (nombre_usuario, correo, contrasena) VALUES
('carlos22', 'carlos22@mail.com', 'segura123'),       -- Usuario Carlos
('ana_mtz', 'ana.mtz@mail.com', 'passAna456'),        -- Usuario Ana
('diego_lpz', 'diego.lpz@mail.com', 'claveDiego789'); -- Usuario Diego

-- 7) Insertar productos similares en la tabla "productos"
INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
('Laptop HP Pavilion', 'Portátil HP con 8GB RAM y SSD 256GB', 1480000, 12),         -- Producto: Laptop HP
('Mouse Razer Basilisk', 'Mouse gamer ergonómico con precisión óptica', 85000, 45), -- Producto: Mouse Razer
('Teclado Corsair K55', 'Teclado gaming con retroiluminación RGB', 125000, 28);     -- Producto: Teclado Corsair

-- 8) Insertar registros actualizados en la tabla "carrito"
INSERT INTO carrito (usuario_id, producto_id, cantidad) VALUES
(1, 1, 1),                      -- Carlos añade 1 unidad del Laptop HP
(2, 2, 2),                      -- Ana añade 2 unidades del Mouse Razer
(3, 3, 1);                      -- Diego añade 1 unidad del Teclado Corsair

-- 9) Insertar registros actualizados en la tabla "compras"
INSERT INTO compras (usuario_id, total) VALUES
(1, 1480000),                   -- Compra de Carlos por 1,480,000
(2, 170000),                    -- Compra de Ana por 2x85,000 = 170,000
(3, 125000);                    -- Compra de Diego por 125,000
