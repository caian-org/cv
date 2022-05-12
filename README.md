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

[gh-bnc-shield]: https://img.shields.io/github/workflow/status/caian-org/cv/build?label=build&logo=github&style=for-the-badge
[gh-bnc-url]: https://github.com/caian-org/cv/actions/workflows/build.yml

[tag-shield]: https://img.shields.io/github/tag/caian-org/cv.svg?logo=git&logoColor=FFF&style=for-the-badge
[tag-url]: https://github.com/caian-org/cv/releases

[arch-texlive]: https://github.com/caian-org/arch-texlive
[latex]: https://www.latex-project.org
[luatex]: https://www.luatex.org

[en_US]: https://caian-org.s3.amazonaws.com/cv/cv-en_US.pdf
[pt_BR]: https://caian-org.s3.amazonaws.com/cv/cv-pt_BR.pdf
