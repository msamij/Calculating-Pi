# Apache Spark Pi Calculator
This project is a demonstration of how to calculate the value of pi using Apache Spark. The project calculates pi by summing the area of circle.


## How it Works
1. **Random Point Generation**: Random points are generated within the bounding square. The coordinates of each point are uniformly distributed within the square.
2. **Circle Area Calculation**: For each point, its distance from the origin is calculated. If the distance is less than or equal to the radius of the circle (which is half the side length of the square), the point falls within the circle.
3. **Pi Approximation**: The ratio of the number of points falling within the circle to the total number of points generated is used to estimate the area of the circle relative to the area of the square. This ratio is then multiplied by 4 to approximate the value of pi.


## Requirements
- Apache Spark
- Java

## Usage
1. Clone this repository to your local machine.
2. Build the project using Maven.
3. Run the Spark job to calculate pi. You may need to adjust the number of partitions and the number of points generated to achieve desired accuracy.

```bash
# This wil first create the jar file and then run a spark job.
./scripts/build_and_run.sh

# If you already have created the jar file via mvn package run this.
./scripts/run.sh