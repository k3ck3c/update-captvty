adresse=$(wget -q -O- 'http://captvty.fr' | wget -q -O- 'http://captvty.fr' | ggrep -Po '(?=releases).*(?>zip)')
echo $adresse
http="http://"
http+=$adresse
test -n "$http" && wget -qO /tmp/Captvty.zip "$http"
if test -n /tmp/Captvty.zip
then
   unzip -o -d Library/Application\ Support/CrossOver/Bottles/Captvity/drive_c/captvty-2.9.7  /tmp/Captvty.zip &&  rm /tmp/Captvty.zip
fi
