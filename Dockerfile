FROM python
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . code
WORKDIR /code
EXPOSE 80
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:80"]