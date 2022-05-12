FROM caian/arch-texlive:latest
LABEL maintainer="Caian Ertl <hi@caian.org>"

WORKDIR /home/turing
USER turing
COPY --chown=turing:turing document .

RUN make
