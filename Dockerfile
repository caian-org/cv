FROM caian/arch-texlive:2023-03-10@sha256:03788455c9d699bc488cc559ea05ac98ea61e94ac2d2cf467bc8e952da43fe7e AS base
LABEL maintainer="Caian Ertl <hi@caian.org>"

FROM base AS fontdb
RUN luaotfload-tool --update

FROM fontdb AS build
WORKDIR /home/turing
USER turing
COPY --chown=turing:turing document .

RUN make
