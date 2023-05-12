{
    7. Realizar un programa que lea desde teclado información de autos de carrera. 
    Para cada uno de los autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. 
    En la carrera participaron 100 autos. Informar en pantalla:
    
    * Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
    * Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.

}
program siete;

var
    i: integer;
    nombre, n_ultimo, n_ante, n_win: string;
    tiempo, t_ultimo, t_ante, t_win: real;

begin
    {Entrada manual}
    write('1. Ingrese nombre: ');
    read(nombre);
    write('1. Ingrese tiempo: ');
    read(tiempo);

    {inicializo variables}
    t_ultimo:=tiempo;
    t_ante:=n_ante;
    t_win:=tiempo;

    for i := 99 to max do
    begin
        {Entrada manual}
        write('1. Ingrese nombre: ');
        read(nombre);
        write('1. Ingrese tiempo: ');
        read(tiempo);
        case tiempo of
            tiempo >  t_ultimo :    
                begin
                    t_ante:= t_ultimo;
                    t_ultimo:= tiempo;
                    n_ante:=n_ultimo;
                    n_ultimo:=nombre;
                end;
            tiempo > t_anteultimo :
                begin
                    t_ante:=tiempo;
                    n_ante:=nombre;
                end;
            tiempo < Ganador :
                begin
                    t_win:=tiempo;
                    n_win:=nombre;
                end;
                {Ver lo de los primeros dos puestos}
        end;
    end;
end.