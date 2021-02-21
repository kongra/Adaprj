--  Copyright (c) Konrad Grzanek
--  Created: 2021-02-09
package body Prelude.Maybe is

   function Value_Or (M : Maybe; Default : Value_Type) return Value_Type is
     (case M.Kind is
         when Just    => M.Value,
         when Nothing => Default);

end Prelude.Maybe;
