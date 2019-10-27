---
title: Translations
lang: en
---
- Add the [projectName]_[lang_id].ts filename under the qmake project file ([projectName].pro) TRANSLATIONS variable:
  ```
  TRANSLATIONS += resources/translations/myapp_en.ts
  ```
- In a terminal window, change directory to the project one and type: lupdate -verbose <projectName>.pro
  to create the translations/*.ts files, or from QtCreator -> Tools -> External -> Linguist -> Update Translations (lupdate).
- Open the file with Qt Linguist and translate it.
- Run lrelease <projectName>.pro or, as above but running Release, to build the binary .qm translation file.
