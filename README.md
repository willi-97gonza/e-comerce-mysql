1) Crear la base de datos "ecommerce"
sql
Copiar
Editar
CREATE DATABASE ecommerce;
Crea una nueva base de datos llamada ecommerce para almacenar toda la información relacionada con un sistema de compras en línea.

2) Usar la base de datos "ecommerce"
sql
Copiar
Editar
USE ecommerce;
Selecciona la base de datos ecommerce para que todas las operaciones siguientes se realicen dentro de ella.

3) Crear la tabla "usuarios"
sql
Copiar
Editar
CREATE TABLE usuarios (...)
Crea una tabla donde se almacenarán los datos de los usuarios del sistema:

id: Identificador único por usuario (autoincremental).

nombre_usuario: Nombre de usuario.

correo: Dirección de correo única.

contrasena: Contraseña del usuario.

4) Crear la tabla "productos"
sql
Copiar
Editar
CREATE TABLE productos (...)
Define una tabla para los productos disponibles en la tienda:

id: Identificador único del producto.

nombre, descripcion: Detalles del producto.

precio: Precio del producto con hasta dos decimales.

stock: Número de unidades disponibles.

5) Crear la tabla "carrito"
sql
Copiar
Editar
CREATE TABLE carrito (...)
Crea una tabla que actúa como el carrito de compras de los usuarios:

usuario_id: ID del usuario que añadió el producto.

producto_id: ID del producto añadido.

cantidad: Número de unidades del producto.

Las claves foráneas aseguran que los datos coincidan con las tablas usuarios y productos.

6) Crear la tabla "compras"
sql
Copiar
Editar
CREATE TABLE compras (...)
Registra las compras finalizadas:

usuario_id: Quién realizó la compra.

total: Monto total gastado.

fecha: Fecha y hora de la compra (automáticamente se agrega la actual).

7) Insertar usuarios en la tabla "usuarios"
sql
Copiar
Editar
INSERT INTO usuarios (...)
Agrega tres usuarios ficticios: Carlos, Ana y Diego, con sus respectivos correos y contraseñas.

8) Insertar productos en la tabla "productos"
sql
Copiar
Editar
INSERT INTO productos (...)
Agrega tres productos a la tienda: una laptop, un mouse y un teclado.

9) Insertar elementos en la tabla "carrito"
sql
Copiar
Editar
INSERT INTO carrito (...)
Simula que cada usuario ha añadido productos a su carrito:

Carlos: 1 laptop.

Ana: 2 mouses.

Diego: 1 teclado.

10) Insertar registros en la tabla "compras"
sql
Copiar
Editar
INSERT INTO compras (...)
Registra las compras que realizaron los tres usuarios basadas en su carrito.
