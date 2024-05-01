# Stage 1: Build stage
FROM python:3.9 AS builder

WORKDIR /app

COPY . .
# Install required libraries
RUN pip install flask

# Stage 2: Production stage
FROM python:3.9-slim

WORKDIR /app

# Copying built files from the previous stage
COPY --from=builder /app .

# Install required libraries
RUN pip install flask

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
