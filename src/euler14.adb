with Ada.Text_IO;

procedure Euler14 is

   type    Long_Natural is range 0 .. 2 ** 63 - 1;
   subtype Collatz_Arg  is Long_Natural range 1 .. 999_999;

   function  Collatz_Len  (N :  Collatz_Arg) return Long_Natural;
   function  Collatz_Next (N : Long_Natural) return Long_Natural with
     Pre => N < Long_Natural'Last;

   procedure Print_Euler_14;

   function Collatz_Len (N : Collatz_Arg) return Long_Natural is
      Len : Long_Natural := 1;
      I   : Long_Natural := N;
   begin
      while I /= 1 loop
         I   := Collatz_Next (I);
         Len := Len + 1;
      end loop;
      return Len;
   end Collatz_Len;

   function Collatz_Next (N : Long_Natural) return Long_Natural is
   begin
      if N rem 2 = 0 then
         return N / 2;
      else
         return 3 * N + 1;
      end if;
   end Collatz_Next;

   procedure Print_Euler_14 is
      Max_N   : Long_Natural := 1;
      Max_Len : Long_Natural := 0;
   begin
      for N in Collatz_Arg'First .. (Collatz_Arg'Last - 1) loop
         declare
            Len : constant Long_Natural := Collatz_Len (N);
         begin
            if Len >= Max_Len then
               Max_N   := N;
               Max_Len := Len;
            end if;
         end;
      end loop;

      Ada.Text_IO.Put_Line
        ("N is" & Max_N'Img & " and its Collatz sequence length is"
           & Max_Len'Img);

   end Print_Euler_14;

begin
   for I in 1 .. 10 loop
      Print_Euler_14;
   end loop;
end Euler14;
