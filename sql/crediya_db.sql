sql-- Crear base de datos
CREATE DATABASE IF NOT EXISTS crediya_db;
USE crediya_db;

-- Tabla de empleados
CREATE TABLE empleados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  documento VARCHAR(30) UNIQUE NOT NULL,
  rol VARCHAR(30) NOT NULL,
  correo VARCHAR(80) NOT NULL,
  salario DECIMAL(10,2) NOT NULL,
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de clientes
CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  documento VARCHAR(30) UNIQUE NOT NULL,
  correo VARCHAR(80) NOT NULL,
  telefono VARCHAR(20),
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de préstamos
CREATE TABLE prestamos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT NOT NULL,
  empleado_id INT NOT NULL,
  monto DECIMAL(12,2) NOT NULL,
  interes DECIMAL(5,2) NOT NULL,
  cuotas INT NOT NULL,
  fecha_inicio DATE NOT NULL,
  estado VARCHAR(20) DEFAULT 'pendiente',
  saldo_pendiente DECIMAL(12,2),
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE,
  FOREIGN KEY (empleado_id) REFERENCES empleados(id) ON DELETE CASCADE
);

-- Tabla de pagos
CREATE TABLE pagos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  prestamo_id INT NOT NULL,
  fecha_pago DATE NOT NULL,
  monto DECIMAL(10,2) NOT NULL,
  observaciones VARCHAR(200),
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (prestamo_id) REFERENCES prestamos(id) ON DELETE CASCADE
);

-- Índices para mejorar rendimiento
CREATE INDEX idx_cliente_documento ON clientes(documento);
CREATE INDEX idx_empleado_documento ON empleados(documento);
CREATE INDEX idx_prestamo_estado ON prestamos(estado);
CREATE INDEX idx_prestamo_cliente ON prestamos(cliente_id);

-- Datos de ejemplos
INSERT INTO empleados (nombre, documento, rol, correo, salario) VALUES
('Ana García', '1234567890', 'Gerente', 'ana.garcia@crediya.com', 4500000),
('Carlos López', '9876543210', 'Asesor', 'carlos.lopez@crediya.com', 2800000);

INSERT INTO clientes (nombre, documento, correo, telefono) VALUES
('Juan Pérez', '1111111111', 'juan.perez@email.com', '3001234567'),
('María Rodríguez', '2222222222', 'maria.rodriguez@email.com', '3007654321');

-- Consultas útiles para verificación
SELECT 'Empleados registrados:' as Info, COUNT(*) as Total FROM empleados;
SELECT 'Clientes registrados:' as Info, COUNT(*) as Total FROM clientes;