FROM dockerfile/ubuntu-desktop

RUN apt-get update
RUN apt-get -y install firefox
RUN apt-get -y install fonts-arphic-ukai fonts-arphic-uming fonts-arphic-gbsn00lp fonts-arphic-bkai00mp fonts-arphic-bsmi00lp

#clean
RUN rm -rf /var/lib/apt/lists/*

# Expose ports.
#EXPOSE 5901

# Define default command.
CMD echo "203.208.46.146 dl.google.com" >> /etc/hosts && echo "203.208.46.146 dl-ssl.google.com" >> /etc/hosts && vncserver :1 -geometry 1280x800 -depth 24 && tail -F /root/.vnc/*.log

