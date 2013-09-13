#!/bin/bash
date >> temperatura.txt
/opt/vc/bin/vcgencmd measure_temp >> temperatura.txt
