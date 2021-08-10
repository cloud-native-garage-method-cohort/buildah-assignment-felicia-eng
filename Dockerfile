# Base image.
FROM quay.io/ibmgaragecloud/node:lts-stretch

# Set the working directory.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into root of WORKDIR.
COPY package*.json ./

# Executes the npm install command.
RUN npm install

# Copies files from source to destination to WORKDIR.
COPY . .

# Documents that the container process listens on port 3000.
EXPOSE 3000

# Start the application.
CMD ["npm", "start"]

