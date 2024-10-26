FROM ubuntu:latest
RUN sudo apt update -y && sudo apt install nodejs npm -y
RUN sudo npm install -g @angular/cli@14.2.1
COPY . /opt
WORKDIR /opt
RUN npm install && ng build 
WORKDIR /opt/dist/angular-frontend
CMD ng serve --host 0.0.0.0 --port=80