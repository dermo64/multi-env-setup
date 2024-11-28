# Base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install dependencies for Python
RUN apk add --no-cache python3 py3-pip

# Install global npm packages for Next.js/React development
RUN npm install -g create-react-app next

# Copy project files
COPY . .

# Default command for dev environment
CMD ["npm", "run", "dev"]