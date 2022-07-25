adresse=$(wget -q -O- 'http://captvty.fr' | sed -n 's/.*href="\(\/\/.\+\.zip\).*/http:\1/p')
test -n "$adresse" && wget -qO /tmp/Captvty.zip "$adresse"
if test -n /tmp/Captvty.zip
then
   unzip -o -d "$HOME/.captvty/" /tmp/Captvty.zip &&  rm /tmp/Captvty.zip
fi
