#!/bin/bash

sed -n '0~'$1'p' $2 > $3
