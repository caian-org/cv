FROM caian/arch-texlive:latest

COPY . /cv
WORKDIR /cv
RUN make
