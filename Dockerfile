FROM python:3.6.6

ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/* \

RUN mkdir /api
WORKDIR /api
COPY requirements.txt /api
RUN pip install -r requirements.txt

COPY . /api
RUN cd api && python manage.py collectstatic --no-input

EXPOSE 8000
CMD ["gunicorn", "--chdir", "api", "--bind", ":8000", "api.wsgi:application"]
