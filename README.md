# api_test
Testing API for R

docker build --tag=rapi api_test https://github.com/utipe/api_test.git
docker run -p 8000:8000 -d rapi
