echo -e " \n \e[92m
                  ___           ___           ___           ___           ___       ___ 
      ___        /\__\         /\  \         /\  \         /\  \         /\__\     /\__\
     /\  \      /::|  |       /::\  \        \:\  \       /::\  \       /:/  /    /:/  /
     \:\  \    /:|:|  |      /:/\ \  \        \:\  \     /:/\:\  \     /:/  /    /:/  / 
     /::\__\  /:/|:|  |__   _\:\~\ \  \       /::\  \   /::\~\:\  \   /:/  /    /:/  /  \e[36m
  __/:/\/__/ /:/ |:| /\__\ /\ \:\ \ \__\     /:/\:\__\ /:/\:\ \:\__\ /:/__/    /:/__/   
 /\/:/  /    \/__|:|/:/  / \:\ \:\ \/__/    /:/  \/__/ \/__\:\/:/  / \:\  \    \:\  \   
 \::/__/         |:/:/  /   \:\ \:\__\     /:/  /           \::/  /   \:\  \    \:\  \  
  \:\__\         |::/  /     \:\/:/  /     \/__/            /:/  /     \:\  \    \:\  \ 
   \/__/         /:/  /       \::/  /                      /:/  /       \:\__\    \:\__\
                 \/__/         \/__/                       \/__/         \/__/     \/__/ "          
pkg install php php-apache wget -y
echo -e " \e[93m klik izinkan "
termux-setup-storage
wget --progress=bar:force https://raw.githubusercontent.com/fdciabdul/InstagramAccountCreator/master/httpd.conf $PREFIX/etc/apache2
mkdir /sdcard/www
apachectl
echo " Silahkan extract script yang sudah di kirimkan ke folder www di memori internal"
