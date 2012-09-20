#!/bin/sh

x=$(zenity --entry \
	--title="Calculadora Interactiva" \
	--text="Digite el primer número" \
	--entry-text "Su número")
	
y=$(zenity --entry \
	--title="Calculadora Interactiva" \
	--text="Digite el operador" \
	--entry-text "Su número")

z=$(zenity --entry \
	--title="Calculadora Interactiva" \
	--text="Digite el segundo número" \
	--entry-text "Su número")

case $y in
  "+")
    ANSWER=$(source Suma.sh $x $z)
    ;;
  "-")
    ANSWER=$(source Resta.sh $x $z)
  ;;
  "x")
    ANSWER=$(source mult.sh $x $z)
  ;;
  "/")
    ANSWER=$(source division.sh $x $z)
  ;;
 esac

zenity ---info \
	--title="Resultado" \
	--text="$ANSWER"
