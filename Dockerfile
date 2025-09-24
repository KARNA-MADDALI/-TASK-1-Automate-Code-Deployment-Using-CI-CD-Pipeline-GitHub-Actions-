# --------- Stage 1: Build ---------
FROM node:18 AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies (production only)
RUN npm install --production

# Copy app source code
COPY . .

# --------- Stage 2: Production ---------
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only node_modules and app code from build stage
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app ./

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
