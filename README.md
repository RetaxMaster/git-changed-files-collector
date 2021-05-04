# Git Changed File Collector

Este es un pequeño script en bash que se encarga de mirar cuáles archivos cambiaron en un proyecto. Esto se logra por medio de git, ya que los cambios se buscan entre dos commits en específico y al final genera un archivo `.zip.gz` con cada uno de los archivos cambiados y un archivo `changes.md` que contiene las instrucciones de cambio.

Y sí, este script es útil cuando trabajas con "programadores" que no usan git 🙂...

## Modo de uso

Recomiendo poner este script como comando de la terminal para más comodidad, también se puede trabajar directamente desde la carpeta del proyecto, lo más importante es que tenga permisos de ejecución:

```
sudo chmod a+x git-changed-files-collector.sh
```

Su modo de uso es simple, solo hay que invocar el comando, recibe tres parámetros, de los cuales el tercer parámetro es opcional:

- commit1: El hash del primer commit del proyecto desde el que quieres iniciar a comparar
- commit2: El hash del segundo commit del proyecto hasta donde quieres terminar de comparar
- message: El mensaje que quieres que aparezca al inicio del archivo `changes.md`, este parámetro es opcional, por defecto aparecerá el mensaje "Reemplazar los siguientes archivos:"

Ejemplo (ejecutándolo desde la carpeta del proyecto):
```
./git-changed-files-collector.sh e8cc1ba 6ad204f "Estos son los archivos que cambiaron"
```

Ejemplo (ejecutándolo como comando)
```
git-changed-files-collector e8cc1ba 6ad204f "Estos son los archivos que cambiaron"
```

Recomiendo eliminar la extensión del archivo si se ejecuta como comando de la terminal 😄
