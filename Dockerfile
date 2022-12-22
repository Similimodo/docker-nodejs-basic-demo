FROM node:12
            #This states the base image from which our own image will be build
WORKDIR /app
            # This adds our app source code into the image we are building
COPY package*.json ./
            #This is used to install our dependecies so that docker can cache it for us.
            #The first arg shows the file to the intended dependencies and the 2nd arg states the location we want those deps to be run in 
RUN npm install 
            #this is just like openning a terminal session and running a command
COPY . .     
            # This copies all our local file to our current working directory.
ENV PORT=8080 
            # This uses an env variable to state the PORT our app will run openning
EXPOSE 8080
            # This uses an env variable to state the PORT our app will run openning
            
CMD [ "npm", "start" ]
            # This cmd tells the container how to run the application, which in this case starts the node process for the node app