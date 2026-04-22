# 1. Specify a base image (e.g., Python 3.9)
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy local requirements to the container
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application code
COPY . .

# 6. Set the default command to run your app
CMD ["python", "app.py"]
