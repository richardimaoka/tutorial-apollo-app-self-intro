#!/bin/sh

sed '/^$/d' step1.sh | grep -v "#!" 
