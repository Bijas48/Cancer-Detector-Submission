FROM node:22

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3000

ENV MODEL_URL=https://storage.googleapis.com/submissionmlgc-adriankusuma-bucket/machine-learning-models/model.json

CMD ["npm","start"]
