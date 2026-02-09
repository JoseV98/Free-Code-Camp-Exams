#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"

echo -e "\nServicios disponibles del salon\n"

MAIN_MENU(){
  if [[ $1 ]]
  then
    echo -e "\n$1\n"
  fi

  echo "$($PSQL "SELECT * FROM services;")" | while IFS="|" read ID SERVICE
  do 
    echo -e "$ID) $SERVICE"
  done
  echo "Seleccione uno:"
  read SERVICE_ID_SELECTED
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED;")
  if [[ -z $SERVICE_NAME ]]
  then
    MAIN_MENU "Servicio no encontrado, ingrese de un servicio valido"
  else
    echo -e "\nIntrodusca su telefono"
    read CUSTOMER_PHONE
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE';")
    if [[ -z $CUSTOMER_NAME ]]
    then
      echo -e "\nIngrese su nombre"
      read CUSTOMER_NAME
      NEW_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE');")
    fi
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE';")
    echo -e "\nInserse la hora del servicio"
    read SERVICE_TIME

    NEW_APPOINTMENT=$($PSQL "INSERT INTO appointments(time, service_id, customer_id) VALUES ('$SERVICE_TIME', $SERVICE_ID_SELECTED, $CUSTOMER_ID);")
    echo "I have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME." 

  fi
}

MAIN_MENU