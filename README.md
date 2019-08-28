# api_test
Testing API for R

docker build --tag=rapi https://github.com/utipe/api_test.git

docker run --rm -p 8000:8000 -d rapi

API is run on localhost:8000/predict

To shut down:

docker container ls

docker container stop <container ID>
