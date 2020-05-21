*"* use this source file for your ABAP unit test classes

CLASS lcl_calculator DEFINITION.
  PRIVATE SECTION.

    METHODS:  add
      IMPORTING
        op1        TYPE i
        op2        TYPE i
      RETURNING
        VALUE(sum) TYPE i,

      subtract
        IMPORTING
          op1         TYPE i
          op2         TYPE i
        RETURNING
          VALUE(diff) TYPE i,

      multiply
        IMPORTING
          op1         TYPE i
          op2         TYPE i
        RETURNING
          VALUE(prod) TYPE i,

      divide
        IMPORTING
          op1         TYPE i
          op2         TYPE i
        RETURNING
          VALUE(quot) TYPE i,

      other
        IMPORTING
           op1        TYPE boole_d
           op2        TYPE boolean.
ENDCLASS.

CLASS lcl_calculator IMPLEMENTATION.

  METHOD add.
    MOVE op1 TO sum.
    ADD op2 TO sum.
  ENDMETHOD.

  METHOD subtract.
    MOVE op1 TO diff.
    SUBTRACT op2 FROM diff.
  ENDMETHOD.

  METHOD multiply.
    MOVE op2 TO prod.
    MULTIPLY prod BY op1.
  ENDMETHOD.

  METHOD divide.
    MOVE op1 TO quot.
    DIVIDE quot BY op2.
  ENDMETHOD.

  METHOD other.
    DATA: boole_value type boolean,
          boole_value1 type boole_d,
          date type d,
          time type t,
          timezone type timezone.

    boole_value = ABAP_TRUE.

    MOVE boole_value TO boole_value1.

    date = sy-datum.
    time = sy-uzeit.
    timezone = sy-timlo.


  ENDMETHOD.
ENDCLASS.
