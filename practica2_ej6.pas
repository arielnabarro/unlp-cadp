{
6. a. Realice un módulo que lea de teclado números enteros hasta que llegue un valor negativo. Al finalizar la
lectura el módulo debe imprimir en pantalla cuál fue el número par más alto.
b. Implemente un programa que invoque al módulo del inciso a.
}

program SeisA;

procedure Verificador(numeroIngresado: integer; var parImpar: boolean);
//El modulo procedure recibe 2 parametros, "numeroIngresado" como un "parametro por valor" y "parImpar" como "parámetro por referencia", ambas variables son declaradas como variables locales del programa con el nombre que se te de la gana, lo importante es el orden de las mismas y que el tipo de dato sea el mismo.
begin
  parImpar := numeroIngresado mod 2 = 0;
end;
// fin del procedure

var // declaro variables del programa
  numero, parMasAlto: integer;
  par: boolean;
begin
  parMasAlto := 0; // Inicializamos 0, dado que nunca procesaría un valor negativo 

  repeat
    Write('Ingrese un número entero (negativo para finalizar): ');
    Read(numero);

    if numero >= 0 then //si el numero ingresado es positivo entonces
    begin
        Verificador(numero, par); // reviso q sea par
        if par and (numero > parMasAlto) then
            parMasAlto := numero;
    end;
  until numero < 0;

  if parMasAlto <> 0 then
     WriteLn('El número par más alto ingresado fue: ', parMasAlto)
    
  else
    WriteLn('No se ingresaron números pares.');
end.

{
  Ejercicio 7
}

program alcanceYFunciones;
var
    suma, cant : integer;
    promedio : real;

function calcularPromedio : real;
var
    prom : real;
begin
    if (cant = 0) then
        prom := -1
    else
        prom := suma / cant;
    calcularPromedio:=prom; // inciso a
end;

begin { programa principal }
readln(suma);
readln(cant);
promedio:= calcularPromedio;
if (promedio <> -1) then
    begin 
    //cant := 0; quitado por molesto, al momento de hacer el 2do llamado, cosa q se anularía con las correciones del inciso b.
    writeln('El promedio es: ' , calcularpromedio:0:2);
    end
else
    writeln('Dividir por cero no parece ser una buena idea');
end. 
///////////////////////////////////////////////////////////////////////////

{
  Ejercicio 8
}

program anidamientos;

procedure leer(var analisis: boolean);
var
  letra : char;
function analizarLetra : boolean;
  begin
    if (letra >= 'a') and (letra <= 'z') then
      analizarLetra := true
    else
      if (letra >= 'A') and (letra <= 'Z') then
        analizarletra := false;
    analisis:= analizarLetra;
  end; { fin de la funcion analizarLetra }

begin
  readln(letra);
  if (analizarLetra) then
    writeln('Se trata de una minúscula')
  else
    writeln('Se trata de una mayúscula');
end; { fin del procedure leer}

var
  ok : boolean;
begin { programa principal }
  leer(ok);
  if ok then
    writeln('Gracias, vuelva prontosss');
end.