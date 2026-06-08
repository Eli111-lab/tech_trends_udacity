FROM python:3.9-slim
# We need atleast python 3.9 to run flask 3.1, 3.8 is not sufficient.

WORKDIR /techtrends

COPY techtrends/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./techtrends ./

EXPOSE 3111

CMD ["sh", "-c", "python init_db.py && python app.py"]
