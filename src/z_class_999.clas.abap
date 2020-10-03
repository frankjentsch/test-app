  CLASS z_class_999 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

    PUBLIC SECTION.
      INTERFACES if_oo_adt_classrun.
    PROTECTED SECTION.
    PRIVATE SECTION.
  ENDCLASS.

  CLASS z_class_999 IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
      out->write('Hello world!').
    ENDMETHOD.
  ENDCLASS.
