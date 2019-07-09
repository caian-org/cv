FROM caian/arch-texlive:latest
MAINTAINER Caian R. Ertl <hi@caian.org>

COPY --chown=alan:alan . /home/alan/cv
USER alan
WORKDIR /home/alan/cv
RUN make
