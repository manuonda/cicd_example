# Establece la imagen base
FROM adoptopenjdk:17-jdk-hotspot

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de la aplicación a la imagen
COPY target/my-application.jar app.jar

# Expone el puerto en el que se ejecuta la aplicación
EXPOSE 8080

# Define el comando para ejecutar la aplicación
CMD ["java", "-jar", "app.jar"]