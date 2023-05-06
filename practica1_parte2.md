# Practica 1 (parte 2) - Estructuras de contro: for y repeat-until

1. Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
    
    a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5.

    ```pascal
    program uno;

    var 
        i, numero, suma: integer;

    begin
        for i := 1 to 10 do
        begin
            write('Ingrese numero: ');
            read(numero);
            suma := suma + numero;
        end;
        writeln('La suma total de los numeros ingresados es: ', suma);
    end.
    ```
    
    ```pascal
    program uno.a;

    var 
        i, numero, suma, mayores: integer;

    begin
        for i := 1 to 10 do
        begin
            write('Ingrese numero: ');
            read(numero);
            suma := suma + numero;
            if numero > 5 then
                mayores := mayores + 1
        end;
        writeln('La suma total de los numeros ingresados es: ', suma, ' y los mayores a 5 son: ', mayores);
    end.
    ```
    > Notemos que al ejecutar el condicional alse una única linea no es necesario el ";".

2. Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si se lee la secuencia:
    3 5 6 2 3 10 98 8 -12 9    deberá informar: “El mayor número leído fue el 98”

    a. Modifique el programa anterior para que, además de informar el mayor número leído, se informe el número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo, si se lee la misma secuencia:

    3 5 6 2 3 10 98 8 -12 9     deberá informar: “El mayor número leído fue el 98, en la posición 7”

    ```pascal
    program dos;

    var 
        i, orden, mayor,numero : integer;

    begin
        write('Ingrese el numero: ');
        read(mayor);
        i := 1;
        for i := 2 to 10 do
        begin
            write('Ingrese el numero: ');
            read(numero);
            if numero > mayor then
            begin
                mayor := numero;
                orden := i; {2.a}
            end;
        end;
        writeln('El mayor número leído fue el ', mayor, ' en el orden: ', orden); {2.a}
    end.
    ```

3. Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe procesarse. Al finalizar la lectura informar:
    
    - La cantidad de alumnos aprobados (nota 8 o mayor) y
    - la cantidad de alumnos que obtuvieron un 7 como nota.

    ```pascal
    program tres;

    var 
        aprobados, siete, nota: integer;
        nombre: string;

    begin
        while True do
        begin
            write('Ingrese nombre: ');
            readln(nombre);
            if nombre = 'Zidane Zinedine' then
                break;
            write('Ingrese nota: ');
            readln(nota);
            if nota = 7 then
                siete := siete+1;
            if nota >= 8 then
                aprobados := aprobados+1;
        end;
        write('Hubo ',siete, ' alumnos con nota 7 y ',aprobados,' alumnos con nota 8 o mas.');
    end.
    ```

4. Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son los dos números mínimos leídos.
    ```pascal
    program cuatro;

    var 
        i,numero, min_1, min_2: integer;
    begin
        i:=1;
        write('(secuencia: ',i,') Ingrese numero: '); 
        read(min_1);
        min_2 := min_1;
        for i := 2 to 1000 do
        begin
        write('(secuencia: ',i,') Ingrese numero: ');
        read(numero);
        if numero < min_1 then
            begin
            writeln('remplazazo min_2= ', min_2, ' por el valor de min_1= ',min_1); {comentario}
            min_2 := min_1;
            min_1 := numero;
            writeln('min_2= ',min_2,' el valor de min_1= ',min_1,' que seria el numero ingresado');    {comentario}
            end
        else
            begin
            if numero < min_2 then
                begin
                min_2 := numero;
                writeln('El anteultimo número más chico ahora es: ',min_2); {comentario}
                end;
            end;
        end;
        writeln('El numero mas chico ingresado es: ', min_1,' el que le sigue es:',min_2);
    end.
    ```    
    a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el número 0, el cual debe procesarse.

    ```pascal
    program cuatro;

    var 
        i,numero, min_1, min_2: integer;
    begin
        i:=1;
        write('(secuencia: ',i,') Ingrese numero: '); 
        read(min_1);
        min_2 := min_1;
        if min_1=0 then
            i:=1000;
        while i <> 1000 do
        begin
        i:=i+1;
        write('(secuencia: ',i,') Ingrese numero: ');
        read(numero);
        if numero < min_1 then
            begin
            writeln('remplazazo min_2= ', min_2, ' por el valor de min_1= ',min_1); {comentario}
            min_2 := min_1;
            min_1 := numero;
            writeln('min_2= ',min_2,' el valor de min_1= ',min_1,' que seria el numero ingresado');    {comentario}
            end
        else
            begin
            if numero < min_2 then
                begin
                min_2 := numero;
                writeln('El anteultimo número más chico ahora es: ',min_2); {comentario}
                end;
            end;
        if numero=0 then
            i:=1000;
        end;
        writeln('El numero mas chico ingresado es: ', min_1,' el que le sigue es: ',min_2);
    end.
    ```
        
    b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el número 0, el cual no debe procesarse

    ```pascal
        program cuatro;

    var 
        i,numero, min_1, min_2: integer;
    begin
        i:=1;
        write('(secuencia: ',i,') Ingrese numero: '); 
        read(min_1);
        if min_1 <> 0 then
            begin
                min_2 := min_1;
                while i <> 1000 do
                begin
                    writeln('Se procesa'); {comentario}
                    i:=i+1;
                    write('(secuencia: ',i,') Ingrese numero: ');
                    read(numero);
                    if numero <> 0 then
                        begin
                            if numero < min_1 then
                            begin
                                writeln('remplazazo min_2= ', min_2, ' por el valor de min_1= ',min_1); {comentario}
                                min_2 := min_1;
                                min_1 := numero;
                                writeln('min_2= ',min_2,' el valor de min_1= ',min_1,' que seria el numero ingresado');    {comentario}
                            end
                            else
                            begin
                                if numero < min_2 then
                                begin
                                    min_2 := numero;
                                    writeln('El anteultimo número más chico ahora es: ',min_2); {comentario}
                                end;
                            end;    
                        end
                    else
                        i:=1000
                end;
            end;
    writeln('El numero mas chico ingresado es: ', min_1,' el que le sigue es: ',min_2);
    end.
    ```

    > Puede que sea una crotada pero funca.

5. Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se ingrese el número 100, el cual debe procesarse. Informar en pantalla:

    * El número máximo leído.
    * El número mínimo leído.
    * La suma total de los números leídos.

    ```pascal
    program cinco;

    var 
        numero, maximo, minimo, suma: integer;

    begin
        write('Ingrese numero: ');
        read(numero);
        maximo:=numero;
        minimo:=numero;
        suma:=numero;
        while numero <> 100 do 
        begin
            write('Ingrese numero: ');
            read(numero);
            if numero > maximo then
                maximo:=numero;
            if numero < minimo then
                minimo:=numero;
            suma:=suma+numero;
        end;
        writeln('El número máximo leído es: ',maximo);
        writeln('El número mínimo leído es: ',minimo);
        writeln('La suma total de los números leídos es: ',suma);
    end.
    ```

6. Realizar un programa que lea información de 200 productos de un supermercado. De cada producto se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
    
    * Los códigos de los dos productos más baratos.
    * La cantidad de productos de más de 16 pesos con código par.

    ```pascal

    ```

7. Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera participaron 100 autos. Informar en pantalla:
    
    * Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
    * Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.

    ```pascal

    ```

8. Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se lee el monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto total acumulado en ventas de todo el mes.
   
    a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor cantidad de ventas.
 
    ```pascal

    ```