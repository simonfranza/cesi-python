FROM python:3.8-slim-buster

ENV PYTHONUNBUFFERED=1
ENV VIRTUAL_ENV=/opt/env
RUN python3 -m venv ${VIRTUAL_ENV}
ENV PATH="${VIRTUAL_ENV}/bin:${PATH}"

RUN python3 -m pip install --upgrade pip

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
CMD python manage.py runserver 0.0.0.0:8000
