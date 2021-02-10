--  Copyright (c) Konrad Grzanek
--  Created: 2021-02-09
generic
   type Value_Type is limited private;
package Prelude.Maybe is

   type Maybe_Kind is (Just, Nothing);

   type Maybe (Kind : Maybe_Kind := Just) is record
      case Kind is
         when Just    => Value : Value_Type;
         when Nothing => null;
      end case;
   end record;

   function Value_Or (M : Maybe; Default : Value_Type) return Value_Type
     with Inline;

end Prelude.Maybe;
