# Use a lighter image of Python 3.10
FROM python:3.10-slim

# Working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . . 

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Port to expose the API : app would be accessible on 8000
EXPOSE 8000

# Define the command to start the app
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]