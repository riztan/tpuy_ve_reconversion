/*
 *  Proyecto Tpuy.
 *
 *  tables.ch   Cabecera de manipulacion de informacion de tablas de datos.
 *

	Copyright � 2008-2016  Riztan Gutierrez <riztang@gmail.org>

   Este programa es software libre: usted puede redistribuirlo y/o modificarlo 
   conforme a los t�rminos de la Licencia P�blica General de GNU publicada por
   la Fundaci�n para el Software Libre, ya sea la versi�n 3 de esta Licencia o 
   (a su elecci�n) cualquier versi�n posterior.

   Este programa se distribuye con el deseo de que le resulte �til, pero 
   SIN GARANT�AS DE NING�N TIPO; ni siquiera con las garant�as impl�citas de
   COMERCIABILIDAD o APTITUD PARA UN PROP�SITO DETERMINADO. Para m�s informaci�n, 
   consulte la Licencia P�blica General de GNU.

   http://www.gnu.org/licenses/

 */

/* NOTA: Las Tablas deben ser Hash y las columnas 
 *       un Hash dentro del Hash de la tabla
 *  
 *   Ejemplo:   tabla := Hash()
 *              tabla["ID"] := Hash()
 *              tabla["ID"]["NAME" ] := "ID"
 *              tabla["ID"]["LABEL"] := "Identificaci�n"
 *
 *   Ejemplo de Uso:
 *              "select "+TB:ID  �   "select "+__:ID
 */

//#include "tpy_xbs.ch"

#xtranslate TB:<field>  => ;
            __TNAME__+"." + ;
            hb_HGet( hb_HGet( _TABLE_ ,<"field">), "NAME" )

#xtranslate __:<field>  => ;
            hb_HGet( hb_HGet( _TABLE_ ,<"field">), "NAME" )

#xtranslate __:<field>:<property>  => ;
            hb_HGet( hb_HGet( _TABLE_ ,<"field">), <"property"> )

//eof
