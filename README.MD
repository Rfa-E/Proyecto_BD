# *Modificación del fichero*
## **Primera modificación**
Se ha encontrado un dato erroneo en la fila 85.
```
"85;Sara Mota de Larrea & Family;family;$21.1B;+$65.5M;Mexico;Commodities;;;;"
```
En el que podemos observar que él en la columna de "TotalNetWorth" está desplazada por el dato erróneo "family". La modificación ha sido eliminar el valor para desplazar las columnas a su posición correcta y dejar un valor null para la columna "YTDChange".
## **Segunda modificación**
La segunda modificación que se ha hecho es la eliminación de cuatro filas al final del documento, que no contenían ningún valor en su interior, lo que causaba un error al finalizar el "LOAD" del archivo.
```
500;Odd Reitan;$5.72B;-$19.9M;+$669M;Norway;Food & Beverage;;;;
;;;;;;;;;;
;;;;;;;;;;
;;;;;;;;;;
;;;;;;;;;;
```
**[Enlace del archivo original](https://www.kaggle.com/datasets/frtgnn/500-richest-people-2021?resource=download)**

**[Enlace del archivo modificado](https://drive.google.com/file/d/1UE62WX5hgf6N7kgAN0zWwt8OAG7Gk5OC/view?usp=share_link)**