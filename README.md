# Text To Speech server

## Steps to Launch the TTS

To create the image for the ruth-tts:

```
docker build -t ruth-tts .
```

To run the ruth text-to-speech engine:

```
docker run -p 5000:5000 -d -rm ruth-tts
```