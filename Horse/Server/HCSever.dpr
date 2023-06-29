program HCSever;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.Jhonson,
  System.SysUtils;

begin
  THorse
    .Use(CORS)
    .Use(Jhonson());

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9000,
    procedure //(Horse: THorse)
    var
      Horse: THorse;
    begin
      Writeln('Servidor est� rodando na porta ' + IntToStr(Horse.Port));
    end);
end.