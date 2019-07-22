docker build --no-cache=true -t dnp3mqtt_image .


docker run -it -p 20000:20000 dnp3mqtt_image bash
