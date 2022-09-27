## Dockerfile for great_expectations
FROM python:3.7.3

# Create app directory
WORKDIR /great_expectations

# Copy app source code
COPY . .

# Update pip
RUN pip install --upgrade pip

# Install requirements
RUN pip install -r requirements.txt --no-cache-dir

# Expose port
EXPOSE 80

# USE IF STATEMENT TO CHECK IF GREAT EXPECTATIONS IS INSTALLED
RUN great_expectations --version

# Run app
CMD [ "great_expectations", "--help" ]