FROM node:18-alpine
WORKDIR /app
COPY ./SGSM /app
RUN npm install
EXPOSE 8001
CMD ["node", "index.js"]

FROM node:18-alpine
WORKDIR /app
COPY ./SN /app
RUN npm install
EXPOSE 8002
CMD ["node", "index.js"]

FROM node:18-alpine
WORKDIR /app
COPY ./SMI /app
RUN npm install
EXPOSE 8003
CMD ["node", "index.js"]

FROM node:18-alpine
WORKDIR /app
COPY ./SS /app
RUN npm install
EXPOSE 8004
CMD ["node", "index.js"]

FROM node:18-alpine
WORKDIR /app
COPY ./SA /app
RUN npm install
EXPOSE 8005
CMD ["node", "index.js"]