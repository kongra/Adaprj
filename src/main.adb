procedure Main is

   Incremented : Boolean := False;

   procedure Incr_Until (X : in out Natural) with
     Contract_Cases =>
     (Incremented => X > X'Old,
      others      => X = X'Old);

   procedure Incr_Until (X : in out Natural) is
   begin
      if X < 1000 then
         X := X + 1;
         Incremented := True;
      else
         Incremented := False;
      end if;
   end Incr_Until;

   X1 : Natural := 10;

begin
   Incr_Until (X1);
end Main;
