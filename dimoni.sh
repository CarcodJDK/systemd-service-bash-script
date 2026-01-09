#!/bin/bash
log=/usr/local/bin/dimoni.log
pid=/usr/local/bin/dimoni.pid
case $1 in
start)
while true
do
echo "start"
if [ -f $pid ]
then
echo "el Programa ya estaba arrancado"
echo "revisa el log, programa en curso"
else
echo "Arrancando el programa"
echo "estoy vivo" >>$log
echo "$$" >>$pid #damos valor del id al proceso $pid
sleep 2
fi
done
;;
stop)
if [ -f $pid ]
then
echo "Deteniendo el programa"
programa=$(cat $pid)
kill -9 $programa
rm -f $pid
echo "Programa detenido" >>$log
else
echo "El programa en cuestión ya estaba detenido" >>$log
exit 4
fi
;;
restart)
$0 stop
$0 start &
;;
status)
# Verifica si se proporciona un argumento
if [ "$1" == "" ] || [ "$1" == " " ]
then
echo "ERROR: Introduce un argumento" >>$log
exit 1
fi
while true
do
if [ -f $pid ]
then
echo "Comprueba el .log"
echo "El programa está arrancado" >>$log
sleep 1
else
echo "Comprueba el log"
echo "El programa no está arrancado" >>$log
fi
sleep 2
done
;;
*)
echo "ERROR: Introduce un argumento válido" >>$log
exit 3
;;
esac
