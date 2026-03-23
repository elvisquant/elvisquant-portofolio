# Step 1: Use a tiny, high-performance web server
FROM nginx:alpine

# Step 2: King Senior Move - Add a custom config for better performance (optional but elite)
# For now, we use the default Nginx path
WORKDIR /usr/share/nginx/html

# Step 3: Copy your portfolio files into the container
# This copies your index.html and assets folder
COPY . .

# Step 4: Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
