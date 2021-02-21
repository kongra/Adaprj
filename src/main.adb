--  Copyright (c) Konrad Grzanek
--  Created: 2019-02-10
with Ada.Containers.Bounded_Vectors;

procedure Main is
   --  pragma SPARK_Mode (Off);

   type My_Index is new Natural range 0 .. 10_000;

   package My_Indexes_Vectors is new Ada.Containers.Bounded_Vectors
     (Index_Type   => My_Index,
      Element_Type => Natural);

   V1 : My_Indexes_Vectors.Vector (Capacity => 100);

begin
   V1.Append (1);
   V1.Append (2);
   V1.Append (3);
end Main;
