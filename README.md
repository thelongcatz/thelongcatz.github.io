# The Long Cat's Blog
[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]
[![GPLv3][gplv3-shield]][gplv3]

This is the repository to my blog, built upon the Jekyll template [hydejack].

## Modification
A couple of modifications were done to enhance the tagging functionality, as inspired from [this blogpost](https://www.untangled.dev/2020/06/02/tag-management-jekyll):
- A custom plugin `tag_generator.rb` that generates the relevant tag entries in the `_featured_tags` and `feeds-by-tag` folders
- A custom layout `feeds-by-tag.xml` that provides an RSS feed that is filtered by tags
- A custom page `tags.md` that lists every single tag in the blog

In addition, the spelling for "license" has also been changed to "licence" in most of the licences and notice pages, sans the verbatim copies of the documents.

To facilitate [KaTeX](https://khan.github.io/KaTeX/) support, a custom Github workflow based on the example from the [hydejack documentation](https://hydejack.com/docs/deploy/#github-actions) is also used to build the blog.
A couple of things to note:
1. As Jekyll has a fixed static build process, the generated tag pages will not be built in the first run, hence the double `jekyll build`.
2. Despite the claim that the variable `ruby-version` does not matter, it does change the version of ruby installed on the runner so do cross-check compatibility with [hydejack].

## Licence
The Jekyll template [hydejack], from which this blog is constructed, is licensed under the [GNU General Public License v3.0][gplv3]. The modifications are detailed in the [Modification](#modification) section above in this README file.

Unless otherwise stated, the content of this blog shall be licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[hydejack]: https://github.com/hydecorp/hydejack
[gplv3]: https://www.gnu.org/licenses/gpl-3.0.html
[gplv3-shield]: https://img.shields.io/badge/Licence-GPLv3-lightgrey.svg
[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/Licence-CC%20BY--SA%204.0-lightgrey.svg