unit uFunciones;

interface

function EjecutarOperacion(numero_1, numero_2, operacion : string):string;


implementation

uses
  System.StrUtils,
  System.SysUtils;

function MuestraError():String;
begin
  Result := 'Error';
end;

function EjecutarOperacion(numero_1, numero_2, operacion : string):string;
begin
  result := MuestraError();
  case IndexStr(operacion, ['+','-','*','/']) of
    0: result := FloatToStr(StrToFloat(numero_1) + StrToFloat(numero_2));
    1: result := FloatToStr(StrToFloat(numero_1) - StrToFloat(numero_2));
    2: result := FloatToStr(StrToFloat(numero_1) * StrToFloat(numero_2));
    3:  begin
          if numero_2 ='0' then exit;
          result := FloatToStr(StrToFloat(numero_1) / StrToFloat(numero_2));
        end;
    -1: exit;
  end;
end;

end.
