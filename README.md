# SUSTech Homework LaTeX Template

[_Click to read this file in PDF format_](https://github.com/ziqin/LaTeX-SUSTechHomework/blob/master/README.pdf)

## Introduction

This is a LaTeX template designed for writing ~~endless~~ assignments in SUSTech. The design style is inspired by [Henry's work](https://github.com/Henrycobaltech/SUSTechHomeworkTemplate).

## Usage

1. Download `SUSTechHomework.cls`, and place it in the same directory with your LaTeX document;
2. Set the `documentclass` to `SUSTechHomework`.

## Example

```latex
\documentclass[onecolumn,oneside]{SUSTechHomework}

\author{Name}
\sid{11110000}
\title{Homework 1}
\coursecode{CS101}
\coursename{Introduction to Computer Science}

\begin{document}
  \maketitle
  
  \section{Introduction}
  
  Hello World!

\end{document}
```

## Tips

- You are encouraged to XeLaTeX or LuaLaTeX to compile your document;
- You may enjoy using [Overleaf](https://www.overleaf.com), [Papeeria](https://www.papeeria.com), or other online LaTeX writing systems.