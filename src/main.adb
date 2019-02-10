--  -*- Mode: Ada -*-
with Ada.Text_IO;
use  Ada.Text_IO;

procedure Main is
   function Fib(N : in Natural) return Natural is
   begin
      if N = 0 or N = 1 then
         return N;
      else
         return Fib(N - 1) + Fib(N - 2);
      end if;
   end Fib;

   type Fibcount is
      record
         Value : Natural;
         Count : Positive;
      end record;

   function Count(N : in Natural) return Fibcount is
   begin
      if N = 0 or N = 1 then
         return (Value => N, Count => 1);
      else
         declare
            C1 : constant Fibcount := Count(N - 1);
            C2 : constant Fibcount := Count(N - 2);
         begin
            return (Value => C1.Value + C2.Value,
                    Count => C1.Count + C2.Count + 1);
         end;
      end if;
   end Count;

begin
   -- Put_Line(Natural'Last'Image);
   -- Put_Line(Fib(43)'Image);
   -- Put_Line(Fib(44)'Image);
   -- Put_Line(Fib(45)'Image);

   Put_Line(Count(41).Count'Image);
   Put_Line(Count(42).Count'Image);
   Put_Line(Count(43).Count'Image);
end Main;
