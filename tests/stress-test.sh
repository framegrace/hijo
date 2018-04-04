#!/bin/bash
echo "### Running JMeter performance test ###"
# Clear out old results
rm $WORKSPACE/jmeter.jtl
# Run the tests
echo "## Running the tests"
cd "$WORKSPACE"
jmeter -n -t tests/jmeter.jmx -l $WORKSPACE/jmeter.jtl
