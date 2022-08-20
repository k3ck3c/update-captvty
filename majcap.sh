cd $(mktemp -d)
unzip ~/Téléchargements/captvty-2.9.8.3.zip Captvty.exe
stat -c %y ~/.captvty/Captvty.exe 
stat -c %y Captvty.exe 
a=$(stat -c %y Captvty.exe)
echo $a
datecapt=${a:0:10}
echo $datecapt
b=$(stat -c %y ~/.captvty/Captvty.exe)
dateici=${b:0:10}
echo $dateici
if [[ "$datecpt" > "$dateici" ]] ;
then
    adresse=$(wget -q -O- 'http://captvty.fr' | sed -n 's/.*href="\(\/\/.\+\.zip\).*/http:\1/p')
    test -n "$adresse" && wget -qO /tmp/Captvty.zip "$adresse"
    if test -n /tmp/Captvty.zip
    then
    unzip -o -d "$HOME/.captvty/" /tmp/Captvty.zip &&  rm /tmp/Captvty.zip
fi
    echo "break"
fi

