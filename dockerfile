# Usar la imagen del runtime de .NET para la construcción
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Instalar herramientas adicionales
RUN apt-get update && \
    apt-get install -y nano wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
# Descargar el paquete de Microsoft e instalarlo
RUN wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb

# Instalar el SDK de .NET
RUN apt-get update; \
    apt-get install -y dotnet-sdk-8.0

WORKDIR /app
     
# Crear un nuevo proyecto de API web
RUN dotnet new webapi -n weatherApi

# Cambiar al directorio del nuevo proyecto para las operaciones subsecuentes
WORKDIR /app/weatherApi

# Restaurar las dependencias especificadas en el archivo del proyecto
RUN dotnet restore

# Publicar la aplicación
RUN dotnet publish -c Debug -o out

WORKDIR /app/weatherApi/out

# Especificar el Punto de Entrada para la Aplicación
ENTRYPOINT ["dotnet", "weatherApi.dll"]

WORKDIR /app/weatherApi

