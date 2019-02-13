--  -*- Mode: Ada -*-
with Ada.Text_IO;
use  Ada.Text_IO;

procedure Main with
  SPARK_Mode => On
is
   subtype Fib_Arg is Natural range 0 .. 45;

   function Foo (N, M : Fib_Arg) return Natural is
   begin
      return N + M;
   end Foo;

   function Fib (N : Fib_Arg) return Natural is
      A   : Natural := 0;
      B   : Natural := 1;
      Tmp : Natural;
   begin
      for I in 0 .. (N - 1) loop
         Tmp := A;
         A   := B;
         B   := Tmp + B;
      end loop;
      return A;
   end Fib;

begin
   for I in Fib_Arg'Range loop
      Put_Line(I'Img & " => " & Fib(I)'Img);
   end loop;
end Main;

--  function Fib (N : Natural) return Natural is
--  begin
--     if N = 0 or N = 1 then
--        return N;
--     else
--        return Fib(N - 1) + Fib(N - 2);
--     end if;
--  end Fib;

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
