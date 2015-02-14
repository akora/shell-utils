
The `shell-utils.sh` script contains helper functions to manage messages sent to stdout when writing shell scripts. I needed a way to "standardize" and reuse common functions so that my shell scripts follow an organized structure for giving feedback to users and to logging.

Simply include the line

``` shell
source shell-utils.sh
```
in your shell script and start using the following features:

* print a header line at the start including a title
* print various messages with or without a line break at the end with or without [RAG / Traffic light rating system](http://en.wikipedia.org/wiki/Traffic_light_rating_system) status indicators
* easily add timestamps to your lines for precise logging
* easily measure the total runtime of your script

For working examples see the attached `shell-utils-usage-sample.sh` file.

#### Sample output

```
******************* Sample output using shell-utils.sh *******************
=== Message (error) without a line break...                       [FAILED]
=== Message (warning) without a line break...                         [!!]
=== Message (good) without a line break...                            [OK]
=== Message with a second parameter                         param     [OK]
2015-02-14 21:14:00 === Message line with a timestamp...              [OK]
2015-02-14 21:14:00 === Starting the script...
2015-02-14 21:14:00 === Working...
2015-02-14 21:14:06 === Coming to an end...
=== Total runtime: 6 seconds
```

#### Tested on

* Debian 7.8 (wheezy)
* Mac OS X Yosemite 10.10.2
