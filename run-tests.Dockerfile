FROM node:11-alpine
WORKDIR /app
COPY . .
RUN rm -rf /app/node_modules
RUN npm install
ENTRYPOINT ["npm", "run"]
CMD ["test"]