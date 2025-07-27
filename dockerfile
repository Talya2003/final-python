# 1. select a basic image
FROM python:3.9

# 2. create folder for project in the container
WORKDIR /app

# 3. copy all files of the application into the container
COPY . .

# 4. install the neccesary libraries requirements.txt
RUN pip install -r requirements.txt

# 5. open port for external access
EXPOSE 5000

# 6. define the command to run the application
CMD ["python", "app.py"]
