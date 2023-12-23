# Assignments

From [documentation]:

> Please keep in mind that it is not possible to set variables inside a block
and have them show up outside of it. This also applies to loops.
The only exception to that rule are if statements which do not introduce a scope.

It is possible though via namespaces or via `expression-statement` [extension].
See also this [discussion].


[discussion]:    https://github.com/mkdocs/mkdocs/discussions/3530
[documentation]: https://jinja.palletsprojects.com/en/3.1.x/templates/#assignments
[extension]:     https://jinja.palletsprojects.com/en/2.11.x/templates/#expression-statement
