# docker-templates
A series of starter template documents related to Docker deployments.
Different approaches can be found on various branches

##DPNCRR - Django PostgreSQL Nginx Celery RabbitMQ Redis
This branch holds my generic web app template using Django (w/ Gunicorn), PostgreSQL, and Nginx.  I employ Celery running in a separate Docker container with a RabbitMQ DB as my task queue system.  I use Redis for cache and session management.
