# Use a small official Python image
FROM python:3.11-slim

# Create a non-root user
RUN groupadd -r app && useradd -r -g app app

# Set working directory
WORKDIR /app

# Install build dependencies and clean up (keeps image small)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app.py .

# Use non-root user
USER app

# Expose port and run the app
EXPOSE 5000
CMD ["python", "app.py"]
