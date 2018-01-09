mkdir respaldo_sistema
#para crear un directorio llamado respaldo_sistema
cd respaldo_sistema
# se usa cd para cambiar al directorio mencionado 
mkdir -p configuracion/x11 configuracion/gnone
#se agrega la opcion -p para crear todo los directorios padres inexistentes, o sea, busca la rama de directorios, de esta forma se crean x11 y gnone dentro de configuracion
mkdir programas reinstalacion 
#se crean dos directorios al mismo tiempo que estan en el mismo nivel de rama que el directorio ´configuracion´
mkdir -p usuarios/python/scripts
#de nuevo se usa la opcion .p, de esta forma se creara el directorio scripts dentro de python y python dentro de usuarios. 
cd reinstalacion
#para realizar el siguiente ejercicio, debemos cambiarnos al directorio donde nos pide trabajar, es decir, ´reinstalacion´´
touch guia notas secuencia.data paquetes.pkg imagen.iso
#el comando touc nos permite crear archivos, asi que creamos archivos vacios llamados ´guia notas secuencia.data paquetes.pkg imagen iso´. 
cd ..
# de nuevo cambiamos al dir anterior 
ls -alt
#se usa el comando ls para tener un listado del contenido del directorio actual de trabajo, este comando tiene varias opciones; como -a para mostrar todo el contenido del directorio incluyendo los archivos y directorios ocultos, -l para mostrar un listado con formato largo indicando todas las propiedades de los archivos y directorios de dir actual de trabajo. y -t para mostrar un listado tomando como opcion la fecha de modificacion del archivo o dir. 
cd programas
#no cambiamos al dir progamas para copiar ahi lo que se nos pide. 
cp -r /bin/* .
#el comando cp nos permite hacer copias de archivos, la opcion -r nos da un informe de respaldo, es decir, una copia recursiva del directorio informe dentro del dir respaldo. Como queremos copiar todo lo que hay en el dir bin, se agrega un * al comando. 
cd ..
cd configuracion/x11
#nos colocamos en el dir donde vamos a trabajar, es decir, donde van a ser copiados los archivos. 
cp /etc/X11/X* .
# nos cambiamos al dir /etc/x11 que es lo que vamos a copiar, agregando x* pues queremos todos los archivos de ese dir que comiencen con la letra x. 
# rm -r /etc/apache2 /var/www
# cd /etc/firefox-3.5/profile/
# mv bookmarks.html favoritos.resp
# rm -r /etc/*.conf
