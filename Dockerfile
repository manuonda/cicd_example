#Establecemos la imagen base
FROM adoptopenjdk:17-jdk-hotspot

#Establecemos el directorio de trabajo
WORKDIR /app

# Copia el archivo JAR de la aplicacion a la imagen
COPY target/cicd-0.0.1.jar.jar  app.jar

# Expone el puerto en el que se ejecuta la aplicación
EXPOSE 8080

# Define el comando para ejecutar la aplicación
CMD ["java", "-jar", "app.jar"]