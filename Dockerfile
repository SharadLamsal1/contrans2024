# syntax=docker/dockerfile:1

# Use an official Python image as a base
FROM python:3.12.5-bookworm

# Set the working directory to /contrans2024
WORKDIR /contrans 2024

# Copy the requirements.txt file into the container
COPY requirements.txt requirements.txt

# Install the dependencies using pip
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose the port for Jupyter Lab
EXPOSE 8888

# Copy the rest of the application code into the container
COPY . .

# Run JupyterLab when the container starts
CMD ["jupyter", "lab", "--allow-root", "--ip=0.0.0.0", "--port=8888"]