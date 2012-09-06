echo "hola"
function Main(){
 case $2 in
  "+")
    echo "Se suma " $1 " con " $3
  ;;
  "-")
    echo "Se resta" $1 "con" $3
  ;;
 "*")
    echo "Se multiplica" $1 " con " $3
  ;;
  "/")
    echo "Se divide" $1 "con" $3
  ;;
 esac
}
Main $1 $2 $3 

