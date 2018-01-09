mkdir respaldo_sistema
cd respaldo_sistema
mkdir -p configuracion/x11 configuracion/gnone
mkdir programas reinstalacion 
mkdir -p usuarios/python/scripts
cd reinstalacion
touch guia notas secuencia.data paquetes.pkg imagen.iso
cd ..
ls -alt
cd programas
cp -r /bin/* .
cd ..
cd configuracion/x11
cp /etc/X11/X* .
# rm -r /etc/apache2 /var/www
# cd /etc/firefox-3.5/profile/
# mv bookmarks.html favoritos.resp
# rm -r /etc/*.conf
