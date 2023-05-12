{
    6. Realizar un programa que lea información de 200 productos de un supermercado. 
    De cada producto se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
    
    * Los códigos de los dos productos más baratos.
    * La cantidad de productos de más de 16 pesos con código par.
}
program seis;

var
    codigo, codigo_a, codigo_b, par, i: integer;
    precio, precio_a, precio_b: real;
begin
        // es posible que tenga que usar tipos de datos con rangos.
        // tambien que realice algun tipo de validación con logica booleana en un if.
        repeat
            write('1.Ingrese código de producto:');
            read(codigo_a);
            codigo_b:= codigo_a;
        until (codigo_a<=200);
        write('1.Ingrese precio de producto:');
        read(precio_a);
        precio_b:= precio_a;   
    for i := 2 to 5 do
    begin
        repeat
            write(i,'.Ingrese código de producto:');
            read(codigo);
        until (codigo<=200);
        write(i,'.Ingrese precio de producto:');
        read(precio);
        if precio<precio_a then
            begin
            precio_b:= precio_a;
            precio_a:= precio;
            codigo_b:=codigo_a;
            codigo_a:=codigo;
            end
        else
            begin
                if precio < precio_b then
                    begin
                    precio_b:= precio;
                    codigo_b:= codigo;
                    end;
            end;
        if precio>16 then  {ver si es par}
        begin
        if codigo mod 2 = 0 then
            par:= par+1            
        end;
    end;
    writeln('El producto mas barato es: ',codigo_a,'seguido del: ',codigo_b);
    writeln('La cantidad de productos con codigo par mayores de $16 es: ',par);
end.