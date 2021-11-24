# IST769 Fall 2021 Final Exam

## Getting Started

To get started:

1. Open a terminal window (it is highly recommended that you use vLab to complete this exam).
2. Clone this repository: `git clone https://github.com/mafudge/ist769f21final`
3. Change into the directory: `cd ist769f21final`
4. Bring up the docker environment: `docker-compose up -d`
5. Get the Jupyter Url `docker-compose logs jupyter`
6. Open Jupyter; open the `load-initial-data.ipynb` notebook in the `work` folder.
7. Run the notebook to install the data to the databases.

## The iSchool Data Scientist

The iSchool has hired you as a data scientist to help them analyze the data from their student enrollment system. You have been asked to make sense of the relationships hidden within the data.

- Course and program data can be found in the MongoDb database `ischool` under the `courses` and `programs` collections respectively.
- The Student enrollment data can be found in the Cassandra database named `ischool` under the `enrollments` table.

## Tips

- I suggest getting familiar with the data prior to attempting to solve the problems. Do this by querying the data in Spark or Drill to get a sense of the layout and properties of the data. This is considered part of the exam and necessary to complete the challenges.
- If you use Spark or Drill you will need to configure the required jars or storage plugins. I recommend figuring this out first, following the labs. You will need MongoDb, Cassandra, Neo4j, and Elasticsearch.

## Requirements

For full credit on each challenge, you must include:
1. All code required to solve the challenge.
2. A Screenshot of the results so I know your code was executed.
3. In the case of a graph or chart, a legible screenshot of the output.
4. All screenshots must include your name or SU Netid.

## Challenges

1. Use Spark to import the program and course data into Neo4j. Make sure to include the code to create the relationships between the nodes necessary to answer the questions below.
2. Write a Cipher query to display which courses are required in the program versus electives.
3. Write a Cipher query to list the names of the courses for which IST659 is a pre-requisite course.
4. Use spark to combine  course and enrollment together and then import into elastic search.
5. Build a Kibana dashboard to visualize with a chart counts of grade distribution (A,A-,B+, etc...) by the student's program (DS, IS), along with another that plots grade distribution by course.
6. Create another dashboard with a dropdown to filter by student. For the selected student, display the course, grade and course learning outcomes in a table.

