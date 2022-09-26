## Dockerfile for great_expectations
FROM python:3.7.3

# Create app directory
WORKDIR /great_expectations

# Install app dependencies
RUN pip install great_expectations
RUN pip install pandas
RUN pip install sqlalchemy
RUN pip install psycopg2
RUN pip install pyodbc
RUN pip install pyarrow

# Copy app source code
COPY . .

# Expose port
EXPOSE 80

# USE IF STATEMENT TO CHECK IF GREAT EXPECTATIONS IS INSTALLED
RUN great_expectations --version

# Run app
CMD [ "great_expectations", "--help" ]