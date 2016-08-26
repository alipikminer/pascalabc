uses graphabc;
var
  map: array[1..900] of array[1..900] of integer;

var
  ii, i, x, y,xr,yr,xf,yf,xi,yi: integer;

var
  c: color;

procedure mapping();
var
  ic, iic: integer;
begin
  for ic := 1 to 900 do
  begin
    for iic := 1 to 900 do
    begin
      map[ic][iic] := random(0, 1)
    end;
  end;
end;

procedure ostrova();
var
  i, ii: integer;
begin

    x := random(70, 850);
    y := random(70, 850);
    xi:=x;
    yi:=y;
  for ii:= 1 to 100 do
  begin
  xr:=random(-7,7);
  yr:=random(-7,7);
  setpixel(xi,yi,clgreen);

  for i := 1 to 200 do
  begin    
    xr:= random(-5,5);
    yr:= random(-5,5);
    setpixel(xf,yf,clgreen);
    xf:=xi+xr;
    yf:=yi+yr;
  end;
   xi:=xi+xr;
  yi:=yi+yr;
  end;
end;

begin
  randomize();
  mapping();
  sleep(1000);
  for i := 1 to 900 do
  begin
    for ii := 1 to 900 do
    begin
      if map[i][ii] = 0 then c := clBlue;
      // if map[i][ii]=1 then c:= clGreen ;
      setpixel(i, ii, c);
    end;
    
  end;
 for i:= 1 to 12 do
 begin
 ostrova();
end;
end.