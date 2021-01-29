program ServerReact;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Horse;
var
  App : THorse;
begin
  App := THorse.Create(9000);
  App.Get('/ping',
  procedure(Req:THorseRequest;Res:THorseResponse; Next:TProc)
  begin
    Res.Send('<h1>Pong</h1>');
  end);
  App.Start;
end.
