CLASS zceas_class_art01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zceas_class_art01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: it_art TYPE STANDARD TABLE OF zceas_tabla_arte.
    it_art = VALUE #(
        ( client = sy-mandt
          id_art = 1
          descr = 'Pronunciaré sus nombres'
          descr2 = 'Pronunciaré sus nombres de Tamara Trottner'
          color = 'Varios'
          piezas = 1
          stock = 10
          url = 'https://gandhi.vtexassets.com/arquivos/ids/6600076-800-auto?v=638652822043330000&width=800&height=auto&aspect=true' )

        ( client = sy-mandt
          id_art = 2
          descr = 'En el pensamiento'
          descr2 = 'En el pensamiento de César Aira'
          color = 'Naranja'
          piezas = 1
          stock = 42
          url = 'https://gandhi.vtexassets.com/arquivos/ids/6655766-800-auto?v=638677307480930000&width=800&height=auto&aspect=true' )

        ( client = sy-mandt
          id_art = 3
          descr = 'El libro de Bill'
          descr2 = 'El libro de Bill de Alex Hirsch'
          color = 'Negro/Rojo'
          piezas = 1
          stock = 20
          url = 'https://gandhi.vtexassets.com/arquivos/ids/4567117-800-auto?v=638586468051400000&width=800&height=auto&aspect=true' )
    ).

    INSERT zceas_tabla_arte FROM TABLE @it_art.
    IF SY-subrc = 0.
        OUT->WRITE( 'Registro ingresado' ).
    else.
        out->write( 'No pudo ingresar el registro' ).
    endif.



  ENDMETHOD.
ENDCLASS.
