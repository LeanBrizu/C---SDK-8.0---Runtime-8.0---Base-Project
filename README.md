## Descripción
Este repositorio contiene un proyecto base llamado 'weatherApi', el cual es un esqueleto listo para comenzar a trabajar desde cero en la creación de una API web utilizando .NET 8.0. Este ejemplo específicamente instala y configura un entorno de desarrollo completo para una API de clima, pero el propósito real es ofrecer una plantilla general para cualquier tipo de API web que desees desarrollar.

## Requisitos
- Docker
- Docker Compose

## Instrucciones de Uso
Para utilizar este proyecto base y empezar con tu propio proyecto de API web, sigue los siguientes pasos:

1. **Clonar el Repositorio**
   Asegúrate de clonar este repositorio en tu máquina local para comenzar a trabajar con él.

2. **Construcción y Ejecución con Docker**
   Utiliza Docker y Docker Compose para construir y ejecutar la aplicación. Esto se puede hacer con el siguiente comando desde la raíz del proyecto:
   ```shell
   docker-compose up --build
   ```
   Este comando construirá la imagen de tu aplicación a partir del `Dockerfile` proporcionado y la ejecutará junto con una base de datos SQL Server en contenedores Docker, configurados en el archivo `docker-compose.yml`.

3. **Acceso a la Aplicación**
   Una vez que los contenedores estén en funcionamiento, tu API estará accesible a través del puerto `5000` de tu máquina local. Puedes interactuar con ella utilizando herramientas como Postman o cualquier navegador web.

4. **Desarrollo**
   - El proyecto base ya contiene un esqueleto inicial para una API web. Puedes modificar, agregar o eliminar lo que necesites para adaptarlo a los requerimientos de tu proyecto.
   - Para cualquier cambio en el código, puedes reconstruir y reiniciar los contenedores con `docker-compose up --build`.

5. **Personalización**
   - Asegúrate de cambiar la contraseña de la base de datos en el archivo `docker-compose.yml` por una propia antes de iniciar el proyecto.
   - Adapta el nombre de la aplicación 'weatherApi' a lo que mejor describa tu proyecto.

## Características
- **.NET 8.0**: Usa la última versión estable de .NET.
- **SQL Server**: Incluye una imagen de SQL Server para gestionar las bases de datos necesarias para tu aplicación.
- **Docker**: Facilita el desarrollo, construcción y despliegue de tu aplicación utilizando contenedores Docker.
- **Herramientas de Desarrollo**: Instala herramientas adicionales como `nano` y `wget` para facilitar el desarrollo dentro del contenedor.

## Contribuciones
Las contribuciones a este proyecto son bienvenidas. Si tienes alguna mejora o corrección, no dudes en hacer un pull request o abrir un issue.

## Licencia
Este proyecto se distribuye bajo la licencia MIT. Ver el archivo `LICENSE` en este repositorio para más detalles.
