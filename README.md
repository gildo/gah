gah
===

The **G**ithub **A**PI **H**elper

**gah** allows you to access some features that Github didn't made available in the APIs

installation
------------

    $: [sudo] gem install gah

synopsis
--------

Initialize a new Repo

    gah = Gah::Repo.new("fyskij/octodigest")


Number of commits in a repo:

    gah.contributions

    => 67

Contributors:

    gah.contributors

    => 
    {
      "name": "Gildo Fiorito" .... etc


Number of contributors:

    gah.contributors.length

    => 3

Tags list:

    gah.tags

    => {v1.2.0} => "cfad76700b3d38eb3be97e2d5ef75cc0a398f818" 
    etc

List commits ( default "master" )

    @repo = Gah::Commits.new("schacon/ruby-git")

    @repo.commits

    =>
    {
    "commits": [
    {
      "parents": [
        {
          "id": "7250ad418aaa4e725786387e0f66654e75ac1a5d"
        }
      ],
      "author": { ...etc


List contributions by reference:

    @repo.refmits("v1.2.0")

    =>
    {scachon => ["cfad76700b3d38eb3be97e2d5ef75cc0a398f818"], [...etc }


license
-------

This program is distributed under GPL

issues
------

[Issues](http://github.com/fyskij/gah/issues)

author
------

[Ermenegildo "Gildo" Fiorito](http://isagit.com)
