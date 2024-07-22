# Use the official Python image as the base image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the static website files to the working directory
COPY . /app

# Expose port 8000 to the host
EXPOSE 8000

# Command to run the HTTP server
CMD ["python3", "-m", "http.server", "8000"]
