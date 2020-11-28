# !#/bin/shell

##################################
# Eksempel - interaktiv
##################################
interaktiv() {
  echo "Hvad hedder du?"
  read PERSON
  echo "Hej, $PERSON"
}

# interaktiv

##################################
# Variabler
##################################
variables() {
  NAME="Vigan Shemsiu"
  echo $NAME
}
variablesReadonly() {
  NAME="Vigan Shemsiu"
  readonly NAME
  NAME="Jens"
}

# variables
# variablesReadonly

##################################
# Parametre
##################################
readParams() {
  echo "Filnavnet: '$0'"
  echo "Første parameter: $1"
  echo "Anden parameter : ${2:-Dette er min default value}"
  echo "Antal parametre : $#"
}

# readParams $1 $2

##################################
# Arrays
##################################

arr() {
  NAME[0]="Ole"
  NAME[1]="Hans"
  NAME[2]="Knud"

  echo "Udskriver første navn: ${NAME[0]}"
  echo "Udskriver andet navn: ${NAME[1]}"
}

arrVersion2() {
  NAMES=("A" "B" "C")
  echo "Udskriver første navn: ${NAMES[0]}"
  echo "Udskriver andet navn: ${NAMES[1]}"
}

arrVersion3Loop() {
  NAMES=("Storm" "Otto" "Per" "Josefine" "Emma" "Caroline")
  
  for name in ${NAMES[*]}
  do
    echo "Navnet er: ${name}"
  done
}

# arr
# arrVersion2
# arrVersion3Loop


##################################
# If / else / Operators
##################################
simpleIf() {
  if [ 3 > 2 ]
    then
      echo "Jep, 3 er større end 2"
  fi
}

fileTestOperators() {
  # Opret en fil der hedder test.txt
  # echo "Hejsa" > test.txt
  # Brug "./test.txt" som input værdi

  echo "Sti'en til filen:"
  read FILE
  # Hvis man gerne vil modtage password, så vil man nok gemme det med: "read -s" der gør det "secret".

  # File test operators
  if [ ! -e "$FILE" ]
    then
      echo "Filen findes ikke"
  elif [ -f "$FILE" ]
    then
      echo "$FILE er en normal filtype"
  elif [ -d "$FILE" ]
    then
      echo "$FILE er en mappe"
  else
    echo "$FILE er en anden filtype."
  fi
}

# simpleIf
# fileTestOperators
