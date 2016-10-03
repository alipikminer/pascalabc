uses graphabc;
var
  map: array[1..700] of array[1..700] of integer;
  domiki: array[1..5] of array[1..5] of integer;

var
  ii, i, x, y, xr, yr, xf, yf, xi, yi, biome, razmer: integer;

var
  c: color;

procedure derevnya();
var i: integer;
begin
  x := random(1, 695);
  y := random(1, 695);
    if map[x][y] >= 2 then
    begin
      //domiki[i][ii]:=
      map[x][y] := 8;
      
    end;
    for i:= 1 to 90 do
    begin
    xr :=x + random(-2, 2);
    yr :=y + random(-2, 2);
    if xr<=5 then xr:= 10;
    if yr<=5 then yr:= 10;
    if xr>=695 then xr:= 690;
    if yr>=695 then yr:= 690;
    if map[xr][yr] >= 2 then
    begin
      //domiki[i][ii]:=
      map[xr][yr] := 8;
      
    end;
end;
end;

procedure ostrova();
var
  i, ii: integer;
begin
  biome := random(0, 7);
  razmer := random(1, 24);
  x := random(1, 700);
  y := random(1, 700);
  xi := x;
  yi := y;
  for ii := 1 to 250 do
  begin
    xr := random(-razmer, razmer);
    yr := random(-razmer, razmer);
    if xi <= 2 then xi := 3;
    if yi <= 2 then yi := 3;
    if xi >= 698 then xi := 697;
    if yi >= 698 then yi := 697;
    map[xi][yi] := biome;
    
    for i := 1 to 250 do
    begin
      xr := random(-5, 5);
      yr := random(-5, 5);
      xf := xi + xr;
      yf := yi + yr;
      if xf <= 2 then xf := 3;
      if yf <= 2 then yf := 3;
      if xf >= 698 then xf := 697;
      if yf >= 698 then yf := 697;
      map[xf][yf] := biome;
    end;
    xi := xi + xr;
    yi := yi + yr;
  end;
end;

begin
  randomize();
  
  sleep(1000);
  for i := 1 to 24 do
  begin
    ostrova();
  end;
  for i := 1 to 5 do
  begin
    for ii:=1 to 5 do
    begin
    derevnya();
    domiki[i][ii]:=x+(y*10000);
   end;
  end;
  for i := 1 to 700 do
  begin
    for ii := 1 to 700 do
    begin
      if map[i][ii] = 0 then c := clBlue;//вода
      if map[i][ii] = 1 then c := clBlue;//вода
      if map[i][ii] = 2 then c := clChocolate;//шоколданый биом
      if map[i][ii] = 3 then c := clForestGreen;// Тёмный лес
      if map[i][ii] = 4 then c := clGreen;//трава
      if map[i][ii] = 5 then c := clGreen;//трава
      if map[i][ii] = 6 then c := clGray;//горы
      if map[i][ii] = 7 then c := clOlive;//саванна
      if map[i][ii] = 8 then c := clBlack;// точки
      setpixel(i, ii, c);
    end;
  end;
  for i:=1 to 5 do
  begin
    for ii:=1 to 5 do
      begin
        if map[i][ii]=8 then
          begin
            write(domiki[i][ii]);
          end;
      end;
  end;
end.