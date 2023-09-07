FROM python:3.10-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /good_habits_tracker
ADD . /good_habits_tracker
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD python manage.py migrate && python manage.py runserver --noreload 0.0.0.0:8000