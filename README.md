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

    gah.commits

    => 67

Contributors:

    gah.contributors

    => 
    {
      "name": "Gildo Fiorito" .... etc


Number of contributors:

    gah.contributors.length

    => 3

List of tags:

    gah.tags

    => {v1.2.0} => "cfad76700b3d38eb3be97e2d5ef75cc0a398f818" 
    etc

license
-------

This program is distributed under GPL

issues
------

[Issues](http://github.com/fyskij/gah/issues)

author
------

[Ermenegildo "Gildo" Fiorito](http://isagit.com)
