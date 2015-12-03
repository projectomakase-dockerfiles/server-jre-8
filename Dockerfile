FROM projectomakase/base:latest

MAINTAINER Richard Lucas <feedback@projectomakase.org>

USER root

COPY install-java.sh /var/omakase/install-java.sh

RUN  chmod +x install-java.sh; sync && ./install-java.sh

RUN rm /var/omakase/install-java.sh

USER omakase 

CMD ["bash"]	