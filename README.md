[![Build & Check][gh-bnc-shield]][gh-bnc-url]
[![GitHub tag][tag-shield]][tag-url]

# curriculum vitae

<img src=".github/space.gif" height="350px" align="right"/>

My general résumé, in both english and portuguese, written in [__LaTeX__][latex] and compiled with [__LuaTeX__][luatex].
This project also have a tiny pipeline which compiles the documents and push them into my public S3 bucket. The
compilation is made through a docker container (see [`arch-texlive`][arch-texlive]) which have everything needed --
around 11 GB of dependencies.

You can see the compiled, final documents here:
- [`cv-en_US.pdf`][en_US] _(english translation)_
- [`cv-pt_BR.pdf`][pt_BR] _(portuguese translation)_

To build on your host machine, considering you're already have all the required dependencies (LaTeX, LuaTeX,
[FontAwesome][fontawesome] and [Source Sans Pro][source-sans] font), just run `make` inside the `document` directory.
One PDF document will be built for each locale/translation. If you prefer not to download and install everything on
host, the [`Dockerfile`](Dockerfile) has a simple recipe for it (again, be aware that the base image is __VERY LARGE__
and depending on your network and machine, it can take even hours to download & decompress)

[gh-bnc-shield]: https://img.shields.io/github/workflow/status/caian-org/cv/build?label=build&logo=github&style=for-the-badge
[gh-bnc-url]: https://github.com/caian-org/cv/actions/workflows/build.yml

[tag-shield]: https://img.shields.io/github/tag/caian-org/cv.svg?logo=git&logoColor=FFF&style=for-the-badge
[tag-url]: https://github.com/caian-org/cv/releases

[arch-texlive]: https://github.com/caian-org/arch-texlive
[latex]: https://www.latex-project.org
[luatex]: https://www.luatex.org
[fontawesome]: https://fontawesome.com
[source-sans]: https://fonts.google.com/specimen/Source+Sans+Pro

[en_US]: https://caian-org.s3.amazonaws.com/cv/cv-en_US.pdf
[pt_BR]: https://caian-org.s3.amazonaws.com/cv/cv-pt_BR.pdf
