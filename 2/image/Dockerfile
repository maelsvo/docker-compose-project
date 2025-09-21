FROM node:latest
WORKDIR /app
ADD package.json .
RUN npm install
CMD ["npm", "start"]

# docker build -t exercice2 .
# docker run --rm \
#     -v ./:/app/ \
#     -p 127.0.0.1:3030:3030 \
#     exercice2