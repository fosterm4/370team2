import spark.Spark;
import spark.Request;
import spark.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RestfulServer {

    private final Logger log = LoggerFactory.getLogger(RestfulServer.class);
    public RestfulServer(){
        this.configureRestfulApiServer();
        this.processRestfulApiRequests();
    }
    private void configureRestfulApiServer(){
        Spark.port(8080);
        System.out.println("Server listening on port: 8080");
    }

    private void processRestfulApiRequests(){
        Spark.get("/", this::echoRequest);
    }

    private String echoRequest(Request request, Response response){
        response.type("application/json");
        response.header("Access-Control-Allow-Origin", "*");
        response.status(200); //200 = ok

        return HttpRequestToJson(request);
    }
    private String HttpRequestToJson(Request request){
        System.out.println("{\n"
                +"\"body\":\"" + request.body() + "\"\n"
                +"}");
        return"{\n"
                +"\"body\":\"" + request.body() + "\"\n"
                +"}";
    }

    public static void main(String[] programArgs){
        RestfulServer restfulServer = new RestfulServer();
    }

}
