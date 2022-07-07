FROM node:14-slim AS ui-build
WORKDIR /usr/src
COPY . .
RUN npm run build

# Stage2: Packagign the app
FROM nginx:stable-alpine
COPY --from=ui-build /usr/src/build /usr/share/nginx/html
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
