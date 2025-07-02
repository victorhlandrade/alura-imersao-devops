FROM python:3.13.4-alpine3.22

# Set environment variables
WORKDIR /app

# Install system dependencies
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Set the environment variable for Flask
EXPOSE 8000

# Set the command to run the application
CMD ["uvicorn", "app:app","--host", "0.0.0.0", "--port", "8000", "--reload"]


