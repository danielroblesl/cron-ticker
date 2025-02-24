FROM node:22.13.0-alpine3.21

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

RUN npm run test

#ELIMINA LA CARPETA DE TEST UNA VEZ QUE SE EJECUTEN LAS PRUEBAS
#ELIMINA NODE MODULES UNA VEZ QUE SE EJECUTEN LAS PRUEBAS  PARA POSTERIORMENTE SÓLO 
#INSTALAR LAS NECESARIAS PARA PRODUCCIÓN
RUN rm -rf tests && rm -rf node_modules

#INSTALA UNICAMENTE LAS DEPENDENCIAS DE PRODUCCIÓN
RUN npm install --prod


#COMANDO QUE SE EJECUTA CUANDO ARRANCA EL CONTENEDOR
CMD [ "node", "index.js" ]