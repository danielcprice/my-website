FROM node:24.4
WORKDIR /frontend

COPY package*.json .
RUN npm install
COPY . .
# RUN rm -rf /frontend/node_modules


RUN npm ci

# this might need to change
CMD ["npm", "run", "dev"]