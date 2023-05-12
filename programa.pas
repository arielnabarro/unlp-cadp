{
    6. Realizar un programa que lea información de 200 productos de un supermercado. 
    De cada producto se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
    
    * Los códigos de los dos productos más baratos.
    * La cantidad de productos de más de 16 pesos con código par.
}

program seis;

var
    codigo, codigo_a, codigo_b, par: integer;
    precio, precio_a, precio_b: real;
begin
        // es posible que tenga que usar tipos de datos con rangos.
        // tambien que realice algun tipo de validación con logica booleana en un if.
        repeat
            write( 'Ingrese código de producto:');
            read(codigo);
        until (codigo<=200);
        write( 'Ingrese precio de producto:');
        read(precio);     
    for i := 2 to 200 do
    begin
        repeat
            write( 'Ingrese código de producto:');
            read(codigo);
        until (codigo<=200);
        write( 'Ingrese precio de producto:');
        read(precio);
        if precio<precio_a then
            begin
                precio_b:= precio_a;
                precio_a= precio;
            end;
        else
            begin
                if precio < precio_b then
                    precio_b:= precio;    
            end;
        if precio>16 then
        begin
        if precio mod 2 = 0 then {ver si es par}
            par:= par+1;            
        end;
    end;
    writeln('El producto mas barato es: ',)
end.
    