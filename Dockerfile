# build phase

FROM node:alpine as builder

WORKDIR '/app'

COPY package.json .
RUN npm install

COPY . .

RUN npm run build

# run phase

FROM nginx

# copy the content of build from the builder phase to a default nginx folder for serving static html
COPY --from=builder /app/build /usr/share/nginx/html 

# the dafautl command for nginx image startup the container automatically for us

