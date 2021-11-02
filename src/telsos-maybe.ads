generic
   type Element_T is private;
package Telsos.Maybe is

   type Kind_T is (Nothing, Just);

   type T (Kind : Kind_T := Nothing) is record
      case Kind is
         when Nothing =>
            null;
         when Just =>
            Value : Element_T;
      end case;
   end record;

   function Nothing return T is (Kind => Nothing)
     with Inline;

   function Just (Value : Element_T) return T is (Just, Value)
     with Inline;

end Telsos.Maybe;
