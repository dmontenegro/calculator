function guicalc(){
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

echo "$par1"
echo "$par2"
echo "$par3"
ANSWER=12
dialog --title "Calculadora Interactiva" \
 --backtitle "Linux Para Ingenieria" \
 --infobox "$ANSWER" 3 34
}

guicalc
