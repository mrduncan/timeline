Timeline
========

Timeline is a command line tool for generating timeline data from git
repositories. It is still very much a work in progress - I'd love to hear your
thoughts on how it could be better.

Timeline is inspired by Jacob Kristhammar and Rickard Böttcher's work on
[Tornado][0]

Usage
-----

    Usage: timeline [options] command
        -o, --output FILE                Specify the output file name
        -f, --filter FILTER              Specify the regular expression to filter the output with
        -r, --revisions REVISIONS        The git revisions to use (<since>..<until>)
        -n, --number NUMBER              Limit the number of revisions to show
        -b, --branch BRANCH              The git branch
        -v, --version                    Print the version number
        -h, --help                       Display this help message

Examples
--------
How have line counts changed over time?

    timeline -f "\d+" "wc -l index.html"

Contributing
------------

1. Fork Timeline
2. Create a topic branch - `git checkout -b my_branch`
3. Push to your branch - `git push origin my_branch`
4. Send a pull request

Meta
----

* Code: `git clone git://github.com/mrduncan/timeline.git`
* Home: <http://github.com/mrduncan/timeline>
* Bugs: <http://github.com/mrduncan/timeline/issues>
* Gems: <http://gemcutter.org/gems/timeline>

Author
------

Matt Duncan - matt@mattduncan.org

[0]: http://groups.google.com/group/python-tornado/browse_thread/thread/94b45e815ac992ac
