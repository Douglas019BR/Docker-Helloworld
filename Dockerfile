# import node
FROM node:carbon

# create a directory to hold the application code inside the image
RUN mkdir -p /usr/local/helloworld/

# copy the application code
COPY helloworld.js package.json /usr/local/helloworld/

# set the working directory
WORKDIR /usr/local/helloworld/

# install dependencies
RUN npm install --production

# make this port accessible
EXPOSE 3000

# run the application
ENTRYPOINT [ "node", "helloworld.js" ]

