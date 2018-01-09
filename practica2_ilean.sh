touch linux.etc
#touch para crear una carpeta llamada linux
grep -rli daemon/etc/* > linux.etc
#estoy usando grep como filtro de busqueda en el directorio etc los archivos que  tengan la palabra daemon y enviandolos con > a la carpeta linux.etc
grep -rli linux/etc*.conf >>linux.etc
#de nuevo uso grep como filtro de busqueda y uso * para especificar que busque todos los archivos con terminaqcion .conf 
cat/etc/passwd | less
#uso cat para concatenar archivos y less para analizarlos 
grep -e home | less 
#uso grep como filtro para filtrar la informacion de mi usuario home }
find /usr -perm 777
#uso pan para buscar archivos y especifico que tipo de archivos quiero diciendo que solo los que tengan todos los permisos con -perm 777
find /var -name *.tar  
#estoy buscando con find en el directorio /var todos los archivos con la extension .tar 
touch MisProcesos.prs
#cree un archivo con el comando touch 
ps -fea >>MisProcesos.prs
#estoy pasando todos mis procesos con ps(para ver procesos) -fea a MiSprocesos.prs
chmod 711 linux.etc
#estoy otorgando los permisos perdidos en la practica con el comando chmod 
chmod 740 MisProcesos.prs
#estoy dando permisos para el archivo que cree con el comando chmod 
touch todos.prm | chmod u+rwx,g-wx,o+rwx todos.prm 
#primero cree una carpeta con el comando touch, luego otorgue los permisos pedidos con el metodo tradicional a ese mismo archivo especificandolo al final 
touch grupo.prm | chmod 570 grupo.prm

#cree primero un archivo con el nombre grupo.prm con el comando touch, luego le di permisos con el metodo octal a ese mismo archivo
touch usuario.prm | chmod 755 usuario.prm 
# de nuevo lo mismo, y a ese archivo creado se le dan permisos con el metodo octal l

