#!/bin/bash
osszeadas() {
return `expr $1 + $2`
}
kivonas() {
return `expr $1 - $2`
}
szorzas() {
return `expr $1 \* $2`
}
osztas() {
return `expr $1 / $2`
}
if [ $# -ne 3 ] 
then 
echo "Nincs elég paraméter"
else 
if [ "$2" = "+" ]
then 
osszeadas $1 $3
e=$?
echo $e
else
if [ "$2" = "-" ]
then 
kivonas $1 $3 
e=$?
echo $e 
else
if [ "$2" = "x" ] 
then 
szorzas $1 $3 
e=$?
echo $e
else
if [ "$2" = "/" ] 
then 
osztas $1 $3 
e=$?
echo $e
else 
echo "Rossz paraméterezés" 
fi 
fi 
fi
fi 
fi