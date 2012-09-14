#!/bin/bash
function Main(){
exec 3>&1
par1=$(dialog --title "Calculadora Interactiva" \
 --backtitle "Linux Para Ingenieria" \
 --inputbox "Digite primer numero" 8 50 \
2>&1 1>&3)

par2=$(dialog --title "Calculadora Interactiva" \
 --backtitle "Linux Para Ingenieria" \
 --inputbox "Digite simbolo" 8 50 \
2>&1 1>&3)

par3=$(dialog --title "Calculadora Interactiva" \
 --backtitle "Linux Para Ingenieria" \
 --inputbox "Digite segundo numero " 8 50 \
2>&1 1>&3)

 case $par2 in
  "+")
    echo "Se suma " $par1 " con " $par3
    echo "El resultado es: "
    ANSWER=$(source Suma.sh $par1 $par3)
    ;;
  "-")
    echo "Se resta" $par1 "con" $par3
    echo "El resultado es : "
    ANSWER=$(source Resta.sh $par1 $par3)
  ;;
  "x")
    echo "Se multiplica" $par1 " con " $par3
    echo " el resultado es: "
    ANSWER=$(source mult.sh $par1 $par3)
  ;;
  "/")
    echo "Se divide" $par1 "con" $par3
    echo "el resultado es: "
    ANSWER=$(source division.sh $par1 $par3)
  ;;
 esac

dialog --title "Calculadora Interactiva" \
 --backtitle "Linux Para Ingenieria" \
 --infobox "$ANSWER" 3 34


}
 

Main
