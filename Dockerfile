#base image with python
FROM python:3.9

#Working directory for the app
WORKDIR app/

#Copy the code from system
COPY app.py .

#install required libraries
RUN pip install flask

#Run the application
CMD ["python","app.py"]

