uses graphabc;
var
  map: array[1..700] of array[1..700] of integer;

var
  ii, i, x, y,xr,yr,xf,yf,xi,yi,biome,razmer: integer;

var
  c: color;

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
  if xi<=70 then xi:=71;
  if yi<=70 then yi:=71;
  if xi>=650 then xi:=649;
  if yi>=650 then yi:=649;
  map[xi][yi]:=biome;

  for i := 1 to 250 do
  begin    
    xr:= random(-5,5);
    yr:= random(-5,5);
    xf:=xi+xr;
    yf:=yi+yr;
    if xf<=20 then xf:=21;
    if yf<=20 then yf:=21;
    if xf>=650 then xf:=649;
    if yf>=650 then yf:=649;
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
  for i := 1 to 700 do
  begin
    for ii := 1 to 700 do
    begin
      if map[i][ii] = 0 then c := clBlue;
      if map[i][ii]=1 then c:= clBlue ;
      if map[i][ii]=2 then c:=clChocolate;
      if map[i][ii]=3 then c:=clForestGreen;
      if map[i][ii]=4 then c:=clGreen;
      if map[i][ii]=5 then c:=clGreen;
      if map[i][ii]=6 then c:=clGray;
      if map[i][ii]=7 then c:=clOlive;
      setpixel(i, ii, c);
    end;
    
  end;

end.