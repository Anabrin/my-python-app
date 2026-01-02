# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose port 5000
EXPOSE 5000

# Set environment variable for Flask
ENV FLASK_APP=app.py

# Run Flask when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]

