# Práctica 1 – Estructuras de control: if y while

1. Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos son iguales”.
.
    ```pascal 
    program uno; {una forma de hacerlo}
    var
        VarGloNum1,VarGloNum2: integer;
    begin
        readln(VarGloNum1);
        readln(VarGloNum2);
        if (VarGloNum1 > VarGloNum2) then
            writeln('El numero mayor es: ', VarGloNum1);
        
        if (VarGloNum1 < VarGloNum2) then
            writeln('El numero mayor es: ',VarGloNum2);
        
        if (VarGloNum1 = VarGloNum2) then
            writeln('Los numeros son iguales');
    end.
    ```

2. Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un número X, se escribe |X| y se define como:
 |X| = X cuando X es mayor o igual a cero
 |X| = -X cuando X es menor a cero

    ```pascal
    {hecho por ChatGPT 3}
    program dos;

    var
    numero, valorAbsoluto: real;

    begin
    Write('Ingrese un numero real: ');
    ReadLn(numero);

    if numero >= 0 then
        begin
            valorAbsoluto := numero;
        end
    else
        begin
            valorAbsoluto := -numero;
        end;

    WriteLn('El valor absoluto de ', numero:0:2, ' es ', valorAbsoluto:0:2);
    ReadLn;
    end.
    ```
    > NOTA: `numero:0:2` hace que tenga 2 dígitos despues del punto.

3. Realizar un programa que lea 3 números enteros y los imprima en orden descendente. Por ejemplo, si se ingresan los valores 4, -10 y 12, deberá imprimir: 12 4 -10
.
    ```pascal
    program tres;

    var
    num1, num2, num3, mayor, medio, menor: integer;

    begin
    Write('Ingrese el primer numero: ');
    ReadLn(num1);
    Write('Ingrese el segundo numero: ');
    ReadLn(num2);
    Write('Ingrese el tercer numero: ');
    ReadLn(num3);

    if num1 >= num2 then
    begin
        if num2 >= num3 then
        begin
        mayor := num1;
        medio := num2;
        menor := num3;
        end
        else
        begin
        if num1 >= num3 then
        begin
            mayor := num1;
            medio := num3;
            menor := num2;
        end
        else
        begin
            mayor := num3;
            medio := num1;
            menor := num2;
        end;
        end;
    end
    else
    begin
        if num1 >= num3 then
        begin
        mayor := num2;
        medio := num1;
        menor := num3;
        end
        else
        begin
        if num2 >= num3 then
        begin
            mayor := num2;
            medio := num3;
            menor := num1;
        end
        else
        begin
            mayor := num3;
            medio := num2;
            menor := num1;
        end;
        end;
    end;

    WriteLn('Los numeros en orden descendente son: ', mayor, ' ', medio, ' ', menor);
    ReadLn;
    end.
    ```

4. Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído).
.
    ```pascal
    program cuatro;

    var
        x,a: real;

    begin
        writeln('Ingrese un numero: ');
        readln(x);
        repeat
            writeln('Ingrese un numero: ');
            readln(a);
        until (a=(2*x));
    end.
    ```

5. Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números reales. La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo número, en cuyo caso deberá informarse “No se ha ingresado el doble de X”.
.
    ```pascal
    program cinco;

    var
        x,a: real;
        contador: integer;

    begin
        writeln('Ingrese un numero: ');
        readln(x);
        contador:=0;
        repeat
            writeln('Ingrese un numero: ');
            readln(a);
            contador:=contador+1;
            if a=(2*x) then
                begin
                    writeln('Se ha ingresado el doble de ',x);
                    break;
                end;
        until contador=10;
    end.
    ```
    > En este programa, utilizamos un bucle repeat...until para leer a lo sumo 10 números reales. Después de cada lectura, se comprueba si el número ingresado es el doble de X utilizando la estructura if. Si el número es el doble de X, se imprime un mensaje y se sale del bucle utilizando la instrucción break. Si el contador de números leídos alcanza el valor de 10 y aún no se ha ingresado el doble de X, se imprime un mensaje de que no se ha ingresado el doble de X y se sale del bucle utilizando break. (con ayuda de ChatGPT).

6. Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
    Por ejemplo, se lee la siguiente secuencia:
    33423
    8.40
    19003
    6.43
    -1
    En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo 19003, cuyo promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un promedio).
    Al finalizar la lectura, informar:
        a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
        b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar 1).
        c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean menor al valor 2500 (en el ejemplo anterior se debería informar 0%).
    
```pascal

```

7. Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior.
Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
aumento de precio del producto 10382 no supera el 10%”
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
aumento de precio del producto 32767 es superior al 10%”
8. Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”.
9. Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final.
Por ejemplo:
○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )