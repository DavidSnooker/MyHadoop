#!/bin/bash
# This file is for Cloud Computing project
# Author: Hua Xu

src="$2"
dst="$3"
fileName="$1"
folderName="gutenberg-output/"

# src is the java program and dst is the output file
# Remove previous output first in case there is a confliction
rm -rf /home/hduser/myhadoop/MyHadoop/myhadoop/static/output/*
/usr/local/hadoop/bin/hadoop dfs -rmr /user/hduser/gutenberg-output
/usr/local/hadoop/bin/hadoop jar $src wordcount /user/hduser/gutenberg /user/hduser/gutenberg-output
echo "MapReduce is done"
/usr/local/hadoop/bin/hadoop dfs -copyToLocal /user/hduser/gutenberg-output $dst
echo $fileName
echo $folderName
cd $dst
tar -cvzf $fileName $folderName
