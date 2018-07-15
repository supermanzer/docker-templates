##############################
# Django Container Dockerfile
# This file is used to build the container image for
# our Django container.
##############################

FROM python:3.6
ENV PYTHONUNBUFFERED 1

# ---------- SETTING UP GUNICORN LOGS ------------------
RUN mkdir -p /var/log/gunicorn # Storing Gunicorn log files
RUN touch /var/log/gunicorn/access.log
RUN touch /var/log/gunicorn/error.log
RUN chmod 755 /var/log/gunicorn/access.log
RUN chmod 755 /var/log/gunicorn/error.log
RUN chmod 755 /var/log/gunicorn

#------- SETTING UP APPLICATION DIRECTORY  ---------
RUN mkdir /code
WORKDIR /code

#----------- INSTALLING PYTHON MODULES --------------
ADD requirements.txt /code/
RUN pip install -r requirements.txt

#---------- CREATING UNPRIVILEGED USER -------------
RUN adduser --disabled-password --gecos '' myuser  
