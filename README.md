# IST769 Spring 2023 Final Exam

## Front Matter 

### Important Disclaimer

**This is an open book EXAM. The intent is to measure your knowledge of the course material. You are expected to work on this on your own. The exam period begins when this document is released.**

**Allowed During the Exam Period:**

- All Resources from this class.
- Content from the internet (pages, videos, posted stack overflow, questions, etc., generally anything you can find with a web search).
- Whatever we discuss in class on Monday.
- Asking the instructor for clarification on the Teams Channel ONLY (so everyone sees it).

**NOT Allowed During the Exam Period:**

- Bouncing ideas off your classmates, or collaborating on approaches. 
- Asking another human for clarification, advice, interpretation, or suggestions whether in person or online, whether synchronously or asynchronously.
- Solutions that use code we didn't learn in the class. Stick to Pyspark SQL, Pyspark Dataframes API, and SQL in Drill. No spark RDD or regular Python.
- Use of test aid websites like Chegg, Coursehero, etc. These won't be helpful, and they are evil anyways.

### Getting Started

Is highly recommended that you use vLab to complete this exam. If you don't you're on your own regarding getting this working on your own computer.

1. Check if there are containers running: `PS> docker ps`
2. Stop any running containers: `PS> docker ps -q | % { docker stop $_ }`
2. Clone this repository: `git clone https://github.com/mafudge/ist769sp23final`
3. Change into the repository directory: `cd ist769sp23final`
4. Bring up the docker environment: `docker-compose up -d`
5. The data loader service `dataloader` will import data into the databases to begin. To check on its status: `docker-compose logs dataloader`

## The iSchool Data Scientist

The iSchool has hired you as a data scientist to help them analyze the data from their student enrollment system. You have been asked to make sense of the relationships hidden within the data. Specifically you have been asked to analyze the ADS (Applied Data Science) and IS (Information Systems) programs. You have been provided with the following data sources:

- Course and program data can be found in the MongoDb database `ischool` under the `courses` and `programs` collections respectively.
- The Student enrollment data was extracted to Minio, and can be found in the `enrollments` bucket.

### Tips

**Unlike the midterm exam, less will be provided for you**

- I suggest getting familiar with the data prior to attempting to solve the problems. Do this by querying the data using mongodb, Spark or Drill to get a sense of the layout and properties of the data. This is considered part of the exam and necessary to complete the challenges. 
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

## Turning it in

You should turn in a Word Document to Blackboard with the following:
- Your name, SU email, and IST769 F21 Midterm at the top
- An overview / summary section of how you approached this problem, including any assumptions you made about the problem itself (if any). 
- For each challenge question, include the question number, question itself, and your answer.
- For full credit make sure your answer meets the requirements above.
- If you cannot figure something out, do your best to write up what you are trying to do and include with that as many specifics as possible as to why you could not get it done. This can only help your evaluation.
