FROM openliberty/open-liberty:kernel
COPY src/main/liberty/config/server.xml /config/
COPY target/*.war /config/dropins/
