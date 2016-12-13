Interpreter
===

[![Build Status](https://travis-ci.org/githubuser/Interpreter.png)](https://travis-ci.org/githubuser/Interpreter)

readme.lhs
---

This template targets a library build together with an executable based on the readme.lhs file which also doubles as the main documentation and early testing point for the project.

usage
---

~~~
stack new projectname readme-lhs
cd projectname
<<edit readme.lhs>>
stack build
~~~

`stack solver` and `stack build` if anything goes wrong.

The resultant workflow tends to be conducive to very tight coding loops.

To build & run:

~~~
stack install && readme
~~~

Build, run, render output, and render readme.lhs on file changes.

~~~
filewatcher '**/*.{lhs,hs,cabal}' 'stack install && echo "built" && readme | pandoc -f markdown+lhs -t html -o readme-out.html && pandoc -f markdown+lhs -i readme.lhs -t html -o readme.html && echo "run"'
~~~


> {-# LANGUAGE NoImplicitPrelude #-}
> import Protolude

> main :: IO ()
> main = print "readme.lhs template"
>
