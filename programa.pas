{9. Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro carácter, 
    debe informar un error y finalizar. 
    Una vez leído el carácter de suma o resta, deberá leerse una secuencia de números enteros que finaliza con 0. 
    El programa deberá  aplicar la operación leída con la secuencia de números, e imprimir el resultado final.
    Por ejemplo:
    - Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
    - Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )
}

program nueve;

var 
    operacion: char;
    resultado,numero: integer;

begin
    resultado:=0;
    write('Ingrese operacion "+" o "-" : ');
    read(operacion);
    if operacion='+' then
    begin
        while(True) do
        begin
            write('Ingrese numero entero: ');
            read(numero);
            if numero=0 then
                break
            else
            resultado:=resultado+numero;
        end;
    end
    else 
        if operacion='-' then {Sustracción}
        begin
            write('Ingrese numero entero: ');
                read(resultado);
            while(True) do
            begin
                write('Ingrese numero entero: ');
                read(numero);
                if numero=0 then
                    break
                else
                    resultado:=resultado-numero;
            end;
        end;
    write('El resultado es: ',resultado);
end.