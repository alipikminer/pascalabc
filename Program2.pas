uses graphabc;
var
  map: array[1..700] of array[1..700] of integer;
  domiki: array[1..5] of array[1..5] of integer;
var
  ii, i, x, y,xr,yr,xf,yf,xi,yi,biome,razmer: integer;

var
  c: color;
procedure derevnya();
var i:integer;
begin
x := random(1,700);
y := random(1,700);
map[x][y]:=8;
for i:= 1 to 2000 do
begin
x:= random(1,5);
y:= random(1,5);
if map[x][y]>=1 then
begin
//domiki[i][ii]:=
map[x][y]:=8;

end;
end;
end;
procedure ostrova();
var
  i, ii: integer;
begin
biome:=random(0,7);
razmer:=random(1,24);
    x := random(70, 650);
    y := random(70, 650);
    xi:=x;
    yi:=y;
  for ii:= 1 to 250 do
  begin
  xr:=random(-razmer,razmer);
  yr:=random(-razmer,razmer);
  if xi<=30 then xi:=31;
  if yi<=30 then yi:=31;
  if xi>=670 then xi:=669;
  if yi>=670 then yi:=669;
  map[xi][yi]:=biome;

  for i := 1 to 250 do
  begin    
    xr:= random(-5,5);
    yr:= random(-5,5);
    xf:=xi+xr;
    yf:=yi+yr;
    if xf<=20 then xf:=21;
    if yf<=20 then yf:=21;
    if xf>=670 then xf:=669;
    if yf>=670 then yf:=669;
    map[xf][yf]:=biome;
  end;
   xi:=xi+xr;
  yi:=yi+yr;
  end;
end;

begin
  randomize();

  sleep(1000);
   for i:= 1 to 24 do
 begin
 ostrova();
end;
for i:= 1 to 240 do
begin
derevnya();
end;
  for i := 1 to 700 do
  begin
    for ii := 1 to 700 do
    begin
      if map[i][ii] = 0 then c := clBlue;//вода
      if map[i][ii]=1 then c:= clBlue ;//вода
      if map[i][ii]=2 then c:=clChocolate;//шоколданый биом
      if map[i][ii]=3 then c:=clForestGreen;// Тёмный лес
      if map[i][ii]=4 then c:=clGreen;//трава
      if map[i][ii]=5 then c:=clGreen;//трава
      if map[i][ii]=6 then c:=clGray;//горы
      if map[i][ii]=7 then c:=clOlive;//саванна
      if map[i][ii]=8 then c:=clBlack;// точки
      setpixel(i, ii, c);
    end;
    
  end;

end.