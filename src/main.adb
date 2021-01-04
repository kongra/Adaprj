procedure Main is

   procedure Incr_Until (X : in out Natural);

   procedure Incr_Until (X : in out Natural) is
   begin
      if X < 1000 then
         X := X + 1;
      end if;
   end Incr_Until;

   X1 : Natural := 10;

begin
   Incr_Until (X1);
end Main;
