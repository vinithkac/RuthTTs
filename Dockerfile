FROM python:3.8-alpine
COPY ./app /app
WORKDIR /app
ENV FLASK_APP=server.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN pip install -U pip
RUN pip install ruth-text-to-speech
RUN pip3 install torch torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
EXPOSE 5000
CMD ["flask", "run"]