# Process to revert back:

git log
git show --name-status <hash>
git reset --mixed <hash>

# Show changed files
## e1fab359ef2913ed46052f1710197900b4594311

$ git show --name-status  e1fab359ef2913ed46052f1710197900b4594311
commit e1fab359ef2913ed46052f1710197900b4594311
Author: Frankie Liu <frankie.y.liu@gmail.com>
Date:   Wed Jun 4 07:10:00 2025 -0700

    Adding cover letter and markdown stuff

A       apps/chrome/copy_as_markdown.md
A       apps/markdown/markdown_web.md
M       apps/markdown/readme.md
A       docs/personal/mszep_pandoc/markdown/cover_letter.md

## 7b0e6a6b8c4a8ffbcee3ee71aeb4db4ff638ecd9

$ git show --name-only 7b0e6a6b8c4a8ffbcee3ee71aeb4db4ff638ecd9
commit 7b0e6a6b8c4a8ffbcee3ee71aeb4db4ff638ecd9 (origin/master, origin/HEAD)
Author: Frankie Liu <frankie.y.liu@gmail.com>
Date:   Fri Jun 6 17:06:31 2025 -0700

    jupyter and memory

apps/code/jupyter.md
builds/memory

## 97eefc7ce1643e8c9367c9a89d0339b45f818970

## 2d5a7a05b7082044fe5b471d1d6b7b62605957fd
merge branch master

## 6a3ad92f52da40515c041a3b19002e8475a3141d
jupyter and memory deleted

## e53f6e8ec732372fa02c816b85ca5b66603f823f
## 325cb6da8a74d7f9d84560e2962889ac4069bbe1

(py311)
