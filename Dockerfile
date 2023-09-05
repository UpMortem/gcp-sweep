# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Clone the repository from GitHub
RUN git clone https://github.com/sweepai/sweep .

# Navigate to the 'self_deploy' directory
WORKDIR /app/self_deploy

# Install Node.js dependencies
RUN npm install

# Expose the port your application will run on
ENV PORT=3000
EXPOSE 3000

# Define the command to start your application
WORKDIR /app/self_deploy
CMD ["npm", "start"]

