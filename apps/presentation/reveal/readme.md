# install pnpm
`curl -fsSL https://get.pnpm.io/install.sh | sh -`

# create project
`pnpm sv create`
![project](2025-05-03-22-34-38.png)

# install reveal and some fonts
`pnpm i reveal.js @types/reveal.js`
`pnpm run dev --open`
![reveal](2025-05-03-22-42-21.png)

# follow instructions
[joyofcode](https://joyofcode.xyz/beautiful-presentations-with-svelte)

#
alternatives Mamin-reveal js
https://www.youtube.com/watch?v=lfMhNaXqc1c

#
slide craft
https://www.youtube.com/watch?v=SAi8-P49F2Y

# quarto
https://www.youtube.com/watch?v=41yTFhQBXaE

# Setting up mathjax, katex, ...
https://github.com/burgerga/reveal.js-math

```js
Reveal.initialize({
  mathjax2: {
    mathjax: 'https://cdn.jsdelivr.net/npm/mathjax@2/MathJax.js',
    config: 'TeX-AMS_HTML-full',
    // pass other options into `MathJax.Hub.Config()`
    tex2jax: {
      inlineMath: [ [ '$', '$' ], [ '\\(', '\\)' ] ],
      skipTags: [ 'script', 'noscript', 'style', 'textarea', 'pre' ]
    }
  },
  plugins: [ RevealMath.MathJax2 ]
});
```

```js
Reveal.initialize({
  mathjax3: {
    mathjax: 'https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js',
    tex: {
      inlineMath: [ [ '$', '$' ], [ '\\(', '\\)' ]  ]
    },
    options: {
      skipHtmlTags: [ 'script', 'noscript', 'style', 'textarea', 'pre' ]
    },
  },
  plugins: [ RevealMath.MathJax3 ]
});
```

```js
Reveal.initialize({
  katex: {
    version: 'latest',
    delimiters: [
      {left: '$', right: '$', display: false},
      {left: '$$', right: '$$', display: true},
      {left: '\\(', right: '\\)', display: false},
      {left: '\\[', right: '\\]', display: true}
   ],
   ignoredTags: ['script', 'noscript', 'style', 'textarea', 'pre']
 },
 plugins: [ RevealMath.KaTeX ]
});
```