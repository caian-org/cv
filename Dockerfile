FROM caian/arch-texlive:latest AS base
LABEL maintainer="Caian Ertl <hi@caian.org>"

FROM base AS fontdb
run luaotfload-tool --update

FROM fontdb AS build
WORKDIR /home/turing
USER turing
COPY --chown=turing:turing document .

RUN make
