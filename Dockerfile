FROM caian/arch-texlive:latest
LABEL maintainer="Caian Ertl <hi@caian.org>"

COPY --chown=turing:turing . /home/turing/cv
USER turing
WORKDIR /home/turing/cv
RUN make
