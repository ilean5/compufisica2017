touch linux.etc
#se usa el comando touch para crear un archivo llamado ´linux.etc´
grep -rli daemon/etc/* > linux.etc
#estoy usando grep como filtro de busqueda en el directorio etc, buscara los archivos que tengan la palabra daemos y los enviara con el simbolo de redireccionamiento > a la carpeta linux.etc. La opcion -r busca en un directorio de forma recursiva, la opcion -l se usa cuando son multiples archivos, asi, solo muestra los nombres de aquellos donde se encontro al patron y no las lineas correspondientes, y por ultimo, la opcion -i para ignorar las diferencias entre mayusculas y minusculas 
grep -rli linux/etc*.conf >>linux.etc
#de nuevo uso grep como filtro de busqueda y uso * para especificar que busque todas las rutas de los archivos en el directorio etc que contengan la palabra linux con extension .conf, redireccionando los archivos elegidos a la carpeta linux. etc, el doblle >> es para un redireccionamiento no destructivo o de adicion. 
cat/etc/passwd | less
#uso el comando cat para concatenar archivos, en este cso es el archivo etc/passwd y la opcion less para analizar los archivos. El caracter | sirve cmo filtro para enlazar la salida de un programa con la entrada de otro programa. 
grep -e home | less 
#uso grep como filtro de busqueda para filtrar la informacion de mi usuario home. De nuesvo se usa el caracter| y la opcion less para analizar los archivos. 
find /usr -perm 777
#uso pan para buscar archivos y especifico que tipo de archivos quiero diciendo que solo los que tengan todos los permisos con la opcion -perm 777, que es el metodo octal que indica con 777 ´todos los permisos para todos los usuarios´
find /var -name *.tar  
#estoy buscando con find en el directorio /var todos los archivos(indicando que son todos con el *) con la extension .tar 
touch MisProcesos.prs
#cree un archivo vacio llamado MisProcesos.prs con el comando touch dentro de mi dir de trabajo
ps -fea >>MisProcesos.prs
#estoy pasando todos los procesos de mi usuario activos en el equipo, para esto es necesario antes ver los procesos que se estan ejecutando desde mi sesion abierta con el comando ps, usamos la opcion -fea para ver todos los procesos ejecutandose en el servidor en formato largo 
chmod 711 linux.etc
#estoy otorgando los permisos pedidos en la practica con el comando chmod y el metodo octal, dando todos los permisos la dueño y solo de ejecucion para el grupo y otros con 711.
chmod 740 MisProcesos.prs
#estoy dando permisos para el archivo que cree con el comando chmod. El metodo octal indica todos los permisos para el dueño con un 7, solo de lectura para el grupo con un 4, y ninguno para otros con un 0.
touch todos.prm | chmod u+rwx,g-wx,o+rwx todos.prm 
#primero cree un archivo con el comando touch llamado todos.prm, luego otorgue los permisos pedidos con el metodo tradicional a ese mismo archivo especificandolo al final 
touch grupo.prm | chmod 570 grupo.prm
#cree primero un archivo con el nombre grupo.prm con el comando touch, luego se usa el caracter | como filtro para enlazar la salida de un programa con la entrada de otro. Luego le di permisos con el comando chmod usando el metodo octal a ese mismo archivo.  Indicando con un 5 que deseo dar permisos de ejecucion y lectura al usuario, con un 7 todos los permisos al grupo y con un 0 que no deseo dar ningun permiso a otros. 
touch usuario.prm | chmod 755 usuario.prm 
# de nuevo lo mismo, se crea un archivo llamado usuario.prm y a ese archivo creado se le dan permisos con el metodo octal. 

