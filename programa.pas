{
    8. Un local de ropa desea analizar las ventas realizadas en el último mes. 
    Para ello se lee por cada día del mes, los montos de las ventas realizadas.
    La lectura de montos para cada día finaliza cuando se lee el monto 0. Se asume un mes de 31 días. 
    Informar la cantidad de ventas por cada día, y el monto total acumulado en ventas de todo el mes.
   
    a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor cantidad de ventas.
}

{No voy a hacer 31 variables, asique lo limito a una semana, hasta implementar verctores.}

program ocho;

var 
    dom, lun, mar, mie, jue, vie, sab, dia, max, total: integer;

begin
dom:=0; lun:=0; mar:=0; mie:=0; jue:=0; vie:=0; sab:=0; max:=0; total:=0; {inicializo las variables}
    write('Ingrese monto de la venta: $');
    read(dia);
    for i := 1 to 31 do
    begin
        // seguire con otra cosa.
    end;
end.