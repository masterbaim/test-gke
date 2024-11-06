FROM python:3.9
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


COPY . .
RUN pip install -r requirements.txt

# RUN python manage.py migrate
# COPY env.sample .env
EXPOSE 8000
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
CMD CMD set -xe; python manage.py migrate --noinput; python manage.py runserver 0.0.0.0:8000
