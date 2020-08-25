program ExampleSimple;

{$ifdef MSWINDOWS}{$apptype CONSOLE}{$endif}
{$ifdef FPC}{$mode OBJFPC}{$H+}{$endif}

uses
  SysUtils, IPConnection, TNGDI8;

type
  TExample = class
  private
    ipcon: TIPConnection;
    di8: TTNGDI8;
  public
    procedure Execute;
  end;

const
  HOST = 'localhost';
  PORT = 4223;
  UID = 'XYZ'; { Change XYZ to the UID of your TNG DI8 }

var
  e: TExample;

procedure TExample.Execute;
var values: TArray0To7OfBoolean;
begin
  { Create IP connection }
  ipcon := TIPConnection.Create;

  { Create device object }
  di8 := TTNGDI8.Create(UID, ipcon);

  { Connect to brickd }
  ipcon.Connect(HOST, PORT);
  { Don't use device before ipcon is connected }

  { Get current values }
  values := di8.GetValues;

  WriteLn(Format('Channel 0: %d', [values[0]]));
  WriteLn(Format('Channel 1: %d', [values[1]]));
  WriteLn(Format('Channel 2: %d', [values[2]]));
  WriteLn(Format('Channel 3: %d', [values[3]]));
  WriteLn(Format('Channel 4: %d', [values[4]]));
  WriteLn(Format('Channel 5: %d', [values[5]]));
  WriteLn(Format('Channel 6: %d', [values[6]]));
  WriteLn(Format('Channel 7: %d', [values[7]]));

  WriteLn('Press key to exit');
  ReadLn;
  ipcon.Destroy; { Calls ipcon.Disconnect internally }
end;

begin
  e := TExample.Create;
  e.Execute;
  e.Destroy;
end.
