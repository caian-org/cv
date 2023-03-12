[![Build & Check][gh-bnc-shield]][gh-bnc-url]
[![GitHub tag][tag-shield]][tag-url]

# curriculum vitae

<img src=".github/space.gif" height="360px" align="right"/>

My résumé (curriculum vitae), in both english and portuguese, written in [__LaTeX__][latex] and compiled with
[__LuaTeX__][luatex]. This project also have a tiny pipeline that compiles the documents and push them into my public S3
bucket. The compilation is made through a docker image (see [`arch-texlive`][arch-texlive]) which have everything needed
-- around 11 GB of dependencies.

You can see the compiled, final documents here:
- [`cv-en_US.pdf`][en_US] _(english translation)_
- [`cv-pt_BR.pdf`][pt_BR] _(portuguese translation)_

Full credits to [Leslie Cheng][leslie] for releasing [this template][original-template] for free. If you wish to copy &
reuse this and is already familiar with LaTeX and how to build documents, just copy the contents of the
[`document`](document) directory; everything else is secondary (Docker images, CI pipelines etc).


## Build

To build on your host machine, considering you're already have all the required dependencies (LaTeX, LuaTeX,
[FontAwesome][fontawesome] and [Fira Sans][fira-sans] font), just run `make` inside the `document` directory.
One PDF document will be built for each locale/translation.

If you prefer not to download and install everything on host, the [`Makefile`](document/Makefile) has a simple recipe
for it (again, be aware that the base image is __VERY LARGE__ and depending on your network and machine, it can take
even hours to download & decompress). Just `make compile-from-image` inside the `document` directory.

[gh-bnc-shield]: https://img.shields.io/github/actions/workflow/status/caian-org/cv/upload.yml?label=build%20and%20update&logo=github&style=for-the-badge
[gh-bnc-url]: https://github.com/caian-org/cv/actions/workflows/upload.yml

[tag-shield]: https://img.shields.io/github/tag/caian-org/cv.svg?logo=git&logoColor=FFF&style=for-the-badge
[tag-url]: https://github.com/caian-org/cv/releases

[leslie]: https://github.com/lcfyi
[original-template]: https://github.com/lcfyi/software-resume-template

[arch-texlive]: https://github.com/caian-org/images/tree/master/arch-texlive
[latex]: https://www.latex-project.org
[luatex]: https://www.luatex.org
[fontawesome]: https://fontawesome.com
[fira-sans]: https://fonts.google.com/specimen/Fira+Sans

[en_US]: https://caian-org.s3.amazonaws.com/cv-en_US.pdf
[pt_BR]: https://caian-org.s3.amazonaws.com/cv-pt_BR.pdf
