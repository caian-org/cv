[![Build & Check][gh-bnc-shield]][gh-bnc-url]
[![GitHub tag][tag-shield]][tag-url]

# cv

<img src="icon.svg" height="240px" align="right"/>

My general _curriculum vitae_ (résumé), in both english and portuguese, written in __LaTeX__ and compiled with
__LuaTeX__. This project also have a tiny pipeline which compiles the documents and push them into my public S3 bucket.
The compilation is made through a docker container which have everything needed (about 7 GB of stuff).

[gh-bnc-shield]: https://img.shields.io/github/workflow/status/caian-org/cv/build?label=build&logo=github&style=for-the-badge
[gh-bnc-url]: https://github.com/caian-org/cv/actions/workflows/build.yml

[tag-shield]: https://img.shields.io/github/tag/caian-org/cv.svg?logo=git&logoColor=FFF&style=for-the-badge
[tag-url]: https://github.com/caian-org/cv/releases


## Final documents

- [`cv-en_US.pdf`][en_US]
- [`cv-pt_BR.pdf`][pt_BR]

[en_US]: https://caian-org.s3.amazonaws.com/cv/cv-en_US.pdf
[pt_BR]: https://caian-org.s3.amazonaws.com/cv/cv-pt_BR.pdf


## License

__The MIT License__ (see included [LICENSE](LICENSE) file)

Authors:
- Jan Vorisek (jan@vorisek.me)
- Based on a template by Jan Küster (info@jankuester.com)
- Modified for LaTeX Templates by Vel (vel@LaTeXTemplates.com)
- Modified for personal usage by Caian (hi@caian.org)
