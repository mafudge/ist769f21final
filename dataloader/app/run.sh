#!/bin/bash 

mc alias set s3 http://minio:9000 minio $PASSWORD
mc mb -p s3/enrollments
python3 /app/generate_data.py