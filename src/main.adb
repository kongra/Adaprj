--  Copyright (c) Konrad Grzanek
--  Created: 2019-02-10
with Ada.Text_IO;
with Telsos.Maybe;

procedure Main is

   subtype Test_1_Arg_T is Positive range 1 .. 10_000;

   package Maybe_Positive is new Telsos.Maybe (Positive);
   use Maybe_Positive;

   function Test_1 (N : Test_1_Arg_T) return Maybe_Positive.T is
      Tab   : constant array (1 .. N) of Positive := (others => 1);
      Value : Positive                            := 1;
   begin
      for I in Tab'Range loop
         if Value = Positive'Last then
            return Nothing;
         end if;
         Value := Value + Tab (I);
      end loop;
      return Just (Value);
   end Test_1;

   R1 : constant Maybe_Positive.T := Test_1 (10_000);

   type MPTS is array (Positive range 1 .. 1_000) of Maybe_Positive.T;
   --  T1 : MPTS := (others => Just (4));

   V1 : constant String (1 .. 1_000_000) := (others => ' ');

begin
   --  Ada.Text_IO.Put_Line (Positive'Image (R1.Value));
   Ada.Text_IO.Put_Line (Natural'Image (MPTS'Size));
   --  T1 (1) := Nothing;
   if R1.Kind = Just then
      Ada.Text_IO.Put_Line ("Testujemy");
      Ada.Text_IO.Put_Line (Positive'Image (R1.Value));
   end if;

   Ada.Text_IO.Put_Line (Natural'Image (V1'Size));

end Main;
