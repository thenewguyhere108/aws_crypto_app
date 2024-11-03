# Use an Official Python Runtime as a parent image
FROM python:alpine

# Set the working directory in the container 
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to outside the container 
EXPOSE 5000

# Define evnironemtn variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run flask application
CMD [ "flask", "run" ]