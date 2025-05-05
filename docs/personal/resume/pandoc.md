# From [Sonya](https://sdsawtelle.github.io/blog/output/simple-markdown-resume-with-pandoc-and-wkhtmltopdf.html)

```
git clone https://github.com/sdsawtelle/markdown-resume.git
cd markdown-resume
pandoc -o resume.html -c resume-css-stylesheet.css resume.md
wkhtmltopdf resume.html resume.pdf 
pandoc -o resume.docx --reference-docx=resume-docx-reference.docx resume.md
```