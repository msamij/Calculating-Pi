#!/bin/bash

class_name="com.msamiaj.computepi.ComputePi"
jar_path="/home/muhammadsami/Public/Projects/Java/piapproximation/target/piapproximation-1.0-SNAPSHOT.jar"

# Check if the Maven build was successful
if [ $? -eq 0 ]; then
    # Run spark-submit with the specified class and JAR file
    spark-submit --class "$class_name" "$jar_path"
else
    echo "Maven package failed. Exiting..."
    exit 1
fi
