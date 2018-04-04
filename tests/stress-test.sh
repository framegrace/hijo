#!/bin/bash
echo "### Running JMeter performance test ###"
# Clear out old results
rm $WORKSPACE/jmeter.csv > /dev/null 2>&1 || true
# Run the tests
echo "## Running the tests"
cd "$WORKSPACE"
jmeter -n -p tests/jmeter.properties -t tests/jmeter.jmx -l $WORKSPACE/jmeter.jtl
