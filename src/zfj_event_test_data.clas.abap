CLASS zfj_event_test_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zfj_event_test_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lt_event TYPE STANDARD TABLE OF zfj_event WITH EMPTY KEY.
    lt_event = VALUE #( ( event_id ='E001' ) ).

    MODIFY zfj_event FROM TABLE @lt_event.
    COMMIT WORK.

    out->write( |{ sy-dbcnt } entries modified| ).

  ENDMETHOD.

ENDCLASS.
