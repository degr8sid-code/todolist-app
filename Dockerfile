# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /todolist-app/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

COPY public/ /todolist-app/public
COPY src/ /todolist-app/src
COPY package.json /todolist-app/

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the default React development server port
EXPOSE 3000

# Start the React application
CMD ["npm", "start"]