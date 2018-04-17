--Clase 16/04/2018
--asignar parametros oracle example.
-- total_employes NUMBER:=1.
-- Nunca retorna devuelve.
-- Ver/Salida DBMS.
-- Asociar la conexi�n.
-- Funciones sirven para hacer calculos
--1. CREAR UN FUNCION QUE RECIBA 2 CATETOS Y RETORNE LA HIPOTENUSA;
--2. CREAR UNA FUNCION QUE RECIBA UN VALOR EN MEGABYTES Y LO CONVIERTA A BYTES;
--3. CREAR UN PROCEDIMIENTO QUE RECIBA UN N�MERO E IMPRIMA POR CONSOLA LA TABLA DE MULTIPLICAR DESDE EL 1 HASTA EL 20.
--4. CREAR UNA FUNCION QUE DEVUELVA EL �REA DE UN TRIANGULO RECTANGULO, SE RECIBE LA BASE Y LA ALTURA.
--5. CREAR UNA FUNCION QUE DEVUELVA EL RESULTADO DE LA ECUACI�N 2X**3 + 4X**2 + 77X + 5

--AN�NIMO
BEGIN
  DBMS_OUTPUT.PUT_LINE('HOLA MUNDO');
END;

DECLARE
  VAR1 NUMBER :=1;
  START_TIME NUMBER := 0;
  END_TIME NUMBER :=0;
BEGIN
  START_TIME := DBMS_UTILITY.get_time;
  DBMS_OUTPUT.put_line('GLOBAL VARIABLE: ' || VAR1);
  
  DECLARE
    VAR1 NUMBER :=15;
    BEGIN
      DBMS_OUTPUT.put_line('LOCAL VARIABLE VAR1: ' || VAR1);
    END;
    
    END_TIME := DBMS_UTILITY.get_time;
    DBMS_OUTPUT.put_line('TIME ELAPSED: ' || VAR1);
    DBMS_OUTPUT.put_line(END_TIME - START_TIME || ' MILLISECONDS');
END;

CREATE OR REPLACE FUNCTION FINDMIN(X IN NUMBER, Y IN NUMBER)
RETURN NUMBER IS 
  Z NUMBER :=0;
BEGIN
  IF X>Y THEN
    Z:=Y;
  ELSE
    Z := X;
  END IF;
    
    RETURN Z;
  
END;

BEGIN
  SYS.DBMS_OUTPUT.PUT_LINE('MIN 20 - 40: ' || FINDMIN(20,40));
END;

--Llamar funciones con la tabla dual
SELECT FINDMIN(83,40) AS HOLI FROM DUAL;