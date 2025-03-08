# A simple Dockerfile to illustrate building an application container
FROM amazonlinux:2

# Install any dependencies (example: node, python, etc.)
RUN yum -y install python3

WORKDIR /app
COPY . /app

# Example: If you had a Python application
RUN echo "print('Hello from Dockerfile')" > main.py

CMD ["python3", "main.py"]
