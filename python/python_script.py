import os

#### Carpeta Dataset###
location = 'C:/D/DATA ANALYTICS/DATAOPS/Proyecto Parcial/python/dataset'

### Validar si existe carpeta##
if not os.path.exists(location):  ### Carpeta no existe
### creo la carpeta
    os.mkdir(location)
else:   ### Carpeta existe, borrar el contenido
    for root, dirs, files in os.walk(location,topdown=False):
        for name in files:
            os.remove(os.path.join(root,name)) ## eliminar los archivos
        for name in dirs:
            os.rmdir(os.path.join(root,name)) ## eliminar las carpetas (os es Sist. Op.)

### Importar libreria API Kaggle ###
from kaggle.api.kaggle_api_extended import KaggleApi

### Autenticarnos a la API mediante un token## Se guardo 2 carpetas en el equipo
api = KaggleApi()
api.authenticate()

##Descargar dataset ##
##print(api.dataset_list(search='')) ##listar los datasets disponibles
#api.dataset_download_files('rahulvyasm/netflix-movies-and-tv-shows','netflix_titles.csv',path=location,force=True,quiet=False)

##api.dataset_download_files('rahulvyasm/netflix-movies-and-tv-shows',path=location,force=True,quiet=False,unzip=True)

api.dataset_download_files('juanmerinobermejo/smartphones-price-dataset',path=location,force=True,quiet=False,unzip=True)
