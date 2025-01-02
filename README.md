# Arduino för ungdomar

Kurs 'Arduino för ungdomar'.

* [böcker](docs/boecker/README.md): ladda ner böckerna här i A4- eller A5-format
* [kapitel](docs/kapitel/README.md): det här är de enskilda kapitlen
* [lektionkort](docs/kapitel/lektionskort/README.md): det här är lektionskortet
* [scripts](scripts/README.md): det här är manus för att förvandla kapitlen till böcker
* [vanliga frågor](docs/faq.md): här är de vanligaste frågorna

## Files used by continuous integration scripts

<!-- markdownlint-disable MD013 --><!-- Table rows must be put on one line, hence 80 chars is unavoidable -->

Filename                                  |Descriptions
------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)        |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->
