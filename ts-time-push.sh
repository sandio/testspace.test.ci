TIME_START=$(date +%s)
testspace result*.xml [ALL]result*.xml [$JOB]result*.xml
TIME_END=$(date +%s)
TIME_DIFF=$(( $TIME_END - $TIME_START ))

testspace results.xml [ALL]results.xml [$JOB]results.xml file://$PWD/check-size.xml
CONTENT_SIZE=$(stat -c  '%s' check-size.xml)

NUM_FILES=$(ls -l result*.xml | grep -v ^d | wc -l )

echo "TIMING STATS:" > timing.log
echo "  Number of files: $NUM_FILES" >> timing.log
echo "  Size of content(files X 3): $CONTENT_SIZE" >> timing.log
echo "  $JOB Upload time in seconds, $TIME_DIFF" >> timing.log
echo "$JOB Upload time, $TIME_DIFF" > timing.csv

testspace [ALL]"timing.log{timing.csv:Tracking Time for $JOB}"