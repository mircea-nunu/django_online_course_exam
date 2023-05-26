# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip3 install -r requirements.txt
COPY . /code/
# Call collectstatic (customize the following line with the minimal environment variables needed for manage.py to run):
# RUN python3 manage.py makemigrations
# RUN python3 manage.py migrate
#RUN python manage.py collectstatic --noinput
CMD ["sh", "-e", "/code/start.sh"]
EXPOSE 8000