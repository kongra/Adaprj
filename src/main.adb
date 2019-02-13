--  -*- Mode: Ada -*-
with Ada.Text_IO;
use  Ada.Text_IO;

procedure Main is

   subtype Fib_Arg is Natural range 0 .. 45;

   Fib : constant array (Fib_Arg) of Natural
     := (0  =>  0,
         1  =>  1,
         2  =>  1,
         3  =>  2,
         4  =>  3,
         5  =>  5,
         6  =>  8,
         7  =>  13,
         8  =>  21,
         9  =>  34,
         10 =>  55,
         11 =>  89,
         12 =>  144,
         13 =>  233,
         14 =>  377,
         15 =>  610,
         16 =>  987,
         17 =>  1597,
         18 =>  2584,
         19 =>  4181,
         20 =>  6765,
         21 =>  10946,
         22 =>  17711,
         23 =>  28657,
         24 =>  46368,
         25 =>  75025,
         26 =>  121393,
         27 =>  196418,
         28 =>  317811,
         29 =>  514229,
         30 =>  832040,
         31 =>  1346269,
         32 =>  2178309,
         33 =>  3524578,
         34 =>  5702887,
         35 =>  9227465,
         36 =>  14930352,
         37 =>  24157817,
         38 =>  39088169,
         39 =>  63245986,
         40 =>  102334155,
         41 =>  165580141,
         42 =>  267914296,
         43 =>  433494437,
         44 =>  701408733,
         45 =>  1134903170);
begin
   -- Put_Line(Fib(45)'Img);
   null;
end Main;

--  type Fibcount is limited
--     record
--        Value : Natural;
--        Count : Positive;
--     end record;

--  function Count (N : Natural) return Fibcount is
--  begin
--     if N = 0 or N = 1 then
--        return (Value => N, Count => 1);
--     end if;

--     declare
--        C1 : constant Fibcount := Count(N - 1);
--        C2 : constant Fibcount := Count(N - 2);
--     begin
--        return (Value => C1.Value + C2.Value,
--                Count => C1.Count + C2.Count + 1);
--     end;
--  end Count;

--  Put_Line(Fib(43)'Img);
--  Put_Line(Fib(44)'Img);
--  Put_Line(Fib(45)'Img);

--  Put_Line(Count(41).Count'Image);
--  Put_Line(Count(42).Count'Image);
--  Put_Line(Count(43).Count'Image);
