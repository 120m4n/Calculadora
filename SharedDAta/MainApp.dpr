program MainApp;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, System.Classes, Windows;


  type
  TDataRecord = record
    Field1: string;
    Field2: string;
    Field3: Integer;
  end;
  PDataRecord = ^TDataRecord;

const
  DLLPath = 'SharedData.dll';


var
  GetDataRecord: function: PDataRecord; stdcall;
  SetDataRecord: procedure(const NewData: PDataRecord); stdcall;
  DisposeDataRecord: procedure; stdcall;
  Data: PDataRecord;
  DataRecord: TDataRecord;
  FhDll: THandle;
  path : string;

procedure DisposeData;
begin
  if Assigned(Data) then
  begin
    Dispose(Data);
    Data := nil;
  end;
end;

procedure PrintData;
begin
  Writeln('Campo 1: ' + Data.Field1);
  Writeln('Campo 2: ' + Data.Field2);
  Writeln('Campo 3: ' + IntToStr(Data.Field3));
end;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    try

      // Obtener la ruta de la aplicación
      Path := ExtractFilePath(ParamStr(0));

      // Comprobar si el archivo DLL existe
      if not FileExists(Path + DLLPath) then
      begin
        Writeln('No se encontró el archivo DLL.');
        Exit;
      end;


      // Cargamos la DLL
      FhDll := LoadLibrary(PChar(path +'/'+ DLLPath));

      // Comprobar si la DLL se cargó correctamente
      if FhDll = 0 then
      begin
        Writeln('No se pudo cargar la DLL.');
        Exit;
      end;

      // Obtenemos los punteros a las funciones exportadas de la DLL
      @GetDataRecord := GetProcAddress(FhDll, PChar('GetDataRecord'));
      @SetDataRecord := GetProcAddress(FhDll, PChar('SetDataRecord'));
      @DisposeDataRecord := GetProcAddress(FhDll, PChar('DisposeDataRecord'));


      if (@GetDataRecord = nil) or (@SetDataRecord = nil) then
      begin
        Writeln('No se pudo obtener las funciones de la DLL correctamente.');
        Exit;
      end;

          // Creamos el objeto de datos local
      New(Data);
      Data.Field1 := 'Valor 1';
      Data.Field2 := 'Valor 2';
      Data.Field3 := 123;

      // Establecer el objeto de datos en la DLL
      SetDataRecord(Data);

      // Obtener y procesar el objeto de datos de la DLL
      Data := GetDataRecord;
      PrintData;

      // Liberar la memoria asignada en la DLL
      DisposeDataRecord;

    finally

      // Liberar la biblioteca DLL
      if FhDll <> 0 then
        FreeLibrary(FhDll);

      // Liberar la memoria asignada al objeto de datos
      //DisposeData;
    end;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
