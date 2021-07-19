docker build -t service.apigateway . ;
docker tag service.apigateway mateusz9090/apigateway:local ;
docker push mateusz9090/apigateway:local