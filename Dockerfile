#Download base image
FROM managonz79/dnp3mqtt:latest
#bash
RUN ["/bin/bash", "-c", "echo bash"]
SHELL ["/bin/bash", "-c"]
#Workdir
WORKDIR /
#Download
RUN git clone https://github.com/managonz/dnp3slave
WORKDIR /dnp3slave/
RUN chmod 777 *
#dnp3 port
EXPOSE 20000
#Start the slave
ENTRYPOINT ./watchdog_dnp3mqtt
