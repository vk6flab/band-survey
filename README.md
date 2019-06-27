# Band Survey


## What is this?

Using an RTL dongle you can create a survey that shows signal strength across the band over time. This is useful to determine if any patterns for interference are visible, like a specific time, or a recurring time, or some other aspect.

Read the [project homepage](https://projects.vk6flab.com/home/visualisation-projects/band-survey) for more details.

## Hardware

The hardware is a [Raspberry Pi](https://www.raspberrypi.org/) connected to an [RTL SDR v3 dongle](https://www.rtl-sdr.com/rtl-sdr-blog-v-3-dongles-user-guide/) with a [Diamond HF10CL antenna](https://www.diamondantenna.net/hf10cl.html). The data is gathered on the pi and transferred to my workstation for visualisation.


## Software

The charts are created using [rtl_power](http://kmkeen.com/rtl-power/) and [gnuplot](http://www.gnuplot.info/).

The rtl_power command comes from Kyle Keen, who has documented how to create a band survey. Kyle's page provides access to a python script that creates a chart. It works, but it's very slow for large data-sets and it's non-trivial to adapt the display.

In addition to the python script, Kyle refers to work done by superkuh, who documents [how to use the rtl_power band survey data to make a plot using gnuplot](http://superkuh.com/rtlsdr.html#keenerdappnote).


## Usage

- Run `band_monitor.sh` to generate a CSV file.
- Process the CSV file by executing `make_chart.sh`.


## Prerequisites

- rtl_power
- gnuplot


## Author

Onno (VK6FLAB) [cq@vk6flab.com](mailto:cq@vk6flab.com)
