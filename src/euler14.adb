--  Copyright (c) Konrad Grzanek
--  Created: 2019-03-13
with Ada.Text_IO;

procedure Euler14 is

   type    Long_Natural_T is range 0 .. 2**63 - 1;
   subtype Collatz_Arg_T  is Long_Natural_T range 1 .. 999_999;

   function Collatz_Len  (N : Collatz_Arg_T)  return Long_Natural_T;
   function Collatz_Next (N : Long_Natural_T) return Long_Natural_T with
      Pre => N < Long_Natural_T'Last;

   procedure Print_Euler_14;

   function Collatz_Len (N : Collatz_Arg_T) return Long_Natural_T is
      Len : Long_Natural_T := 1;
      I   : Long_Natural_T := N;
   begin
      while I /= 1 loop
         exit when I = Long_Natural_T'Last;
         I := Collatz_Next (I);
         exit when Len = Long_Natural_T'Last;
         Len := Len + 1;
      end loop;
      return Len;
   end Collatz_Len;

   function Collatz_Next (N : Long_Natural_T) return Long_Natural_T is
      Result : Long_Natural_T;
   begin
      if N rem 2 = 0 then
         Result := N / 2;
      elsif N >= 3_074_457_345_618_258_603 then
         Result := 1; -- Ending the loop immediately
      else
         Result := 3 * N + 1;
      end if;
      return Result;
   end Collatz_Next;

   procedure Print_Euler_14 is
      Max_N   : Long_Natural_T := 1;
      Max_Len : Long_Natural_T := 0;
   begin
      for N in Collatz_Arg_T'First .. (Collatz_Arg_T'Last - 1) loop
         declare
            Len : constant Long_Natural_T := Collatz_Len (N);
         begin
            if Len >= Max_Len then
               Max_N   := N;
               Max_Len := Len;
            end if;
         end;
      end loop;

      Ada.Text_IO.Put_Line
        ("N is" & Max_N'Img & " and its Collatz sequence length is" &
         Max_Len'Img);

   end Print_Euler_14;

begin
   for I in 1 .. 10 loop
      Print_Euler_14;
   end loop;
end Euler14;
