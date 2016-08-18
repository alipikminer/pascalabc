uses graphabc;
var
  map: array[1..250] of array[1..250] of integer;

var
  ii, i: integer;

var
  c: color;

procedure mapping();
var
  ic, iic: integer;
begin
  for ic := 1 to 250 do
  begin
    for iic := 1 to 250 do
    begin
      map[ic][iic] := random(0, 1)
    end;
  end;
end;

begin
  randomize();
  mapping();
  sleep(1000);
  for i := 1 to 250 do
  begin
    for ii := 1 to 250 do
    begin
    if map[i][ii]=0 then c:= clBlue ;
    if map[i][ii]=1 then c:= clGreen ;
      setpixel(i,ii,c);
    end;
    
  end;
end.