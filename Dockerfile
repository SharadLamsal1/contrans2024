# syntax=docker/dockerfile:1

# Use an official Python image as base
FROM python:3.12.5-bookworm

# Set the working directory to /contrans2024
WORKDIR /contrans2024

# Copy the requirements.txt file into the working directory
COPY requirements.txt requirements.txt

# Install the dependencies using pip
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose the port for JupyterLab
EXPOSE 8888

# Run JupyterLab when the container starts
CMD ["jupyter", "lab", "--port", "8888", "--allow-root", "--ip=0.0.0.0"]