FROM node:22 

# Set the working directory inside the container
WORKDIR /app

# Copy package.json to the working directory
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Specify the command to run the application
CMD ["node", "server.js"]
