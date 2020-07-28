# Respository for learning Pharo

Travis url: https://travis-ci.com/github/heshamfm/RnD/builds/177362928

Some platform tests went through. I have reduced testing scope of only Pharo 8 and 9 - 64 bit.

I am currently refactoring the code.

For loading these packages, type the following in Pharo's Playground, highlight the code and then select "Do it" from the right click menu:
```
Metacello new
  baseline: 'TaskManager';
  repository: 'github://heshamfm/RnD';
  load.
```
