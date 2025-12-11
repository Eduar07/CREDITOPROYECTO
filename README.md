# 🏦 CrediYa S.A.S. - Sistema de Gestión de Préstamos

Sistema de consola en Java para la gestión de préstamos, clientes, empleados y pagos.

## 📋 Descripción

CrediYa S.A.S. es una empresa dedicada a otorgar créditos personales que busca digitalizar su control de préstamos y cobros. Este sistema permite:

- ✅ Gestionar empleados y clientes
- ✅ Crear y administrar préstamos con cálculo automático de intereses
- ✅ Registrar pagos y actualizar saldos
- ✅ Generar reportes de cartera
- ✅ Persistencia en archivos y MySQL

## 🛠️ Tecnologías

- **Lenguaje:** Java 11+
- **Base de Datos:** MySQL 8.0+
- **JDBC:** MySQL Connector/J
- **IDE:** IntelliJ

## 📦 Módulos

### 1. Módulo de Empleados
- Registrar y consultar empleados
- Atributos: id, nombre, documento, rol, correo, salario

### 2. Módulo de Clientes
- Registrar y listar clientes
- Consultar préstamos asociados

### 3. Módulo de Préstamos
- Crear préstamos con cálculo automático de intereses
- Cambiar estado (pendiente/pagado)
- Asociar cliente y empleado

### 4. Módulo de Pagos
- Registrar abonos
- Actualizar saldo pendiente
- Historial de pagos

### 5. Módulo de Reportes
- Préstamos activos y vencidos
- Clientes morosos
- Estadísticas con Streams y Lambdas

## 🗂️ Estructura del Proyecto
```
crediya-sistema/
├── src/
│   ├── modelo/           # Clases de entidades (POO)
│   ├── dao/              # Acceso a datos (JDBC)
│   ├── servicio/         # Lógica de negocio
│   ├── util/             # Utilidades (Conexión, Validador)
│   └── excepcion/        # Excepciones personalizadas
├── recursos/             # Archivos .txt de persistencia
├── sql/                  # Scripts de base de datos
├── docs/                 # Documentación y diagramas UML
└── README.md
```

## 🚀 Instalación

### Prerrequisitos

- Java JDK 11 o superior
- MySQL 8.0+
- MySQL Connector/J (JDBC Driver)
- Git

### Pasos

1. **Clonar el repositorio**
```bash
git clone https://github.com/Eduar07/CREDITOPROYECTO.git
cd crediya-sistema
```

2. **Configurar la base de datos**
```bash
mysql -u root -p < sql/crediya_db.sql
```

3. **Configurar credenciales**
   Editar `src/util/ConexionDB.java` con tus credenciales de MySQL

4. **Compilar y ejecutar**
```bash
javac -d bin src/**/*.java
java -cp bin Main
```

## 📊 Diagrama de Clases

![Diagrama UML](docs/DiagramaUML.png)

## 👥 Autor

**Eduar Humberto Guerrero Vergel**

## 📄 Licencia

Este proyecto es de uso educativo.

## 📝 Notas de Versión

### v1.0.0 (En desarrollo)
- ✅ Estructura del proyecto
- 🔄 Implementación de módulos
- 🔄 Persistencia en MySQL
- 🔄 Interfaz de consola