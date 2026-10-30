docker build -t rushijadhao/task:latest .
docker push rushijadhao/task:latest
ssh admin@wServer docker pull rushijadhao/task:latest
ssh admin@wServer docker stop web | true
ssh admin@wServer docker rm -f web | true
ssh admin@wServer docker run --name web -d -p 80:80 rushijadhao/task:latest

