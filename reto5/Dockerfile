FROM node:alpine
LABEL manteiner="LAMC"
LABEL project="hello-bootcamp"
WORKDIR /app
COPY hello-bootcamp/package.json ./
RUN npm install
COPY /hello-bootcamp .
EXPOSE 4000
USER node
CMD ["npm","start"]