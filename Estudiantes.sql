CODIGO UTILIZADO:   
-- Crear la base de datos EstudiantesDB1   

CREATE DATABASE EstudiantesDB;  
USE EstudiantesDB;  
-- Crear tabla Estudiantes  
CREATE TABLE Estudiantes(  
ID INT PRIMARY KEY,  
NOMBRE VARCHAR(50),  
EDAD INT,  
CIUDAD VARCHAR(50),  
NOTA FLOAT);  

-- INSERTAR DATOS  
INSERT INTO Estudiantes (ID,NOMBRE,EDAD,CIUDAD,NOTA)  
VALUES   
(1,'Juan Perez',20,'Bogota',4.5),  
(2, 'Maria Gomez',19,'Medellin',3.8),  
(3, 'Carlos Lopez', 21, 'Cali',4.2),  
(4, 'Ana Rodriguez',20, 'Barranquilla',3.5),  
(5, 'Luisa Martinez',22,'Cartagena', 4.7);  

  -- Mostraar todos los estudiantes  
SELECT *FROM Estudiantes;  

-- Mostrar el nombre y la nota de los estudiantes  
SELECT NOMBRE,NOTA FROM Estudiantes;  

  -- Mostrar los estudiantes mayores de 20 años  
SELECT * FROM Estudiantes WHERE EDAD > 20;  
SELECT NOMBRE FROM Estudiantes WHERE EDAD >20;  

  -- Mostrar los estudiantes que obtuvieron una nota mayor o igual a 4.0  
SELECT * FROM EsTudiantes WHERE NOTA >= 4.0;    

-- Mostrar los estudiantes que viven en Bogotá  
SELECT * FROM Estudiantes WHERE CIUDAD ='Bogota';    

-- Mostrar el nombre y la edad promedio de los estudiantes  
SELECT NOMBRE,AVG(EDAD) AS EDADPROMEDIO FROM Estudiantes GROUP BY NOMBRE    
SELECT NOMBRE, EDAD FROM Estudiantes  

-- Mostrar la ciudad y el promedio de nota de los estudiantes de cada ciudad:  
SELECT Ciudad, AVG(Nota) AS PromedioNota FROM Estudiantes GROUP BY Ciudad;  

-- Mostrar los nombres de los estudiantes ordenados alfabéticamente  
SELECT NOMBRE FROM Estudiantes ORDER BY NOMBRE ASC;  

-- Cantidad de  estudiantes (suponiamos que habia alguno que estaba dos veces)  
SELECT NOMBRE, COUNT(*) FROM Estudiantes GROUP BY NOMBRE;  

-- sabemos que uno es mas grande  
SELECT NOMBRE, COUNT(*) AS CANTIDADDEESTUDIANTES FROM Estudiantes WHERE EDAD > 20 GROUP BY NOMBRE;  

-- cantidad de estudiantes  
SELECT  COUNT(NOMBRE) as cantidad FROM Estudiantes     

-- Mostrar los nombres de los estudiantes cuya nota promedio sea mayor o igual a 4.0  
SELECT NOMBRE, AVG(NOTA)  
FROM Estudiantes  
WHERE NOTA >=4   
GROUP BY NOMBRE;  

-- Otra forma facil  
SELECT * FROM EsTudiantes WHERE NOTA >= 4.0;  

  -- CON EL HAVING?  
SELECT NOMBRE  
FROM Estudiantes   
GROUP BY NOMBRE   
HAVING AVG(NOTA) >= 4.0;  

   -- Mostrar el nombre y la cantidad de estudiantes que tienen una nota promedio mayor a 4.0  
SELECT NOMBRE, COUNT(*)AS CANTIDADDEESTUDIANTES  
FROM Estudiantes  
GROUP BY NOMBRE  
HAVING AVG(NOTA)> 4.0;  

 

 