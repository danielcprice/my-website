#Build
FROM node:24.4
WORKDIR /frontend
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

#Run
FROM node:24.4
WORKDIR /frontend
COPY --from=build /node_modules ./node_modules
COPY --from=build /frontend .
EXPOSE 3000
CMD ["npm", "start"]