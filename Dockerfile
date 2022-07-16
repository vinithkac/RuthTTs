FROM pytorch/pytorch:1.12.0-cuda11.3-cudnn8-runtime
ENV FLASK_APP=server.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN pip3 install -U pip
RUN pip3 install ruth-text-to-speech==0.0.14
RUN pip3 install torch torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
RUN pip3 install flask
RUN pip3 install python-dotenv
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install libsndfile1-dev -y
RUN apt-get install git -y
RUN pip install SoundFile
COPY ./app /app
WORKDIR /app
EXPOSE 5000
ENV API_TOKEN=123
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]