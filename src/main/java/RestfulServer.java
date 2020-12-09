import spark.Spark;
import spark.Request;
import spark.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.sql.*;

public class RestfulServer {

    private final Logger log = LoggerFactory.getLogger(RestfulServer.class);
    public RestfulServer() throws ClassNotFoundException, SQLException {
        this.configureRestfulApiServer();
        this.processRestfulApiRequests();
    }
    private void configureRestfulApiServer(){
        Spark.port(8080);
        System.out.println("Server listening on port: 8080");
        System.out.println("Query options are: COFFEE, AMERICAN, BAR, CHINESE, STEAK, BREAKFAST, PIZZA, DESSERT");
    }

    private void processRestfulApiRequests(){
        Spark.get("/", this::echoRequest);
    }

    public ResultSet SendQuery( String keyword ) throws ClassNotFoundException, SQLException {
        String sql = "Select * FROM Restaurant WHERE Cuisine='" + keyword + "';";

        // SQLite connection string
        String myDriver = "org.sqlite.JDBC";
        Class.forName(myDriver);
        String url = "jdbc:sqlite:focofood.db";
        Connection conn = DriverManager.getConnection(url);
        Statement stat = conn.createStatement();


        try (
             ResultSet rs = stat.executeQuery(sql)){

            // loop through the result set
            while (rs.next()) {
                System.out.println(rs.getString("Restaurant") +  "\t" +
                        rs.getString("Phone") + "\t" +
                        rs.getString("Cuisine")+ "\t" +
                        rs.getString("Address"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage() + "dang");
        }
        ResultSet rs2 = stat.executeQuery(sql);
        return rs2;
    }

    private String echoRequest(Request request, Response response) throws SQLException, ClassNotFoundException {
        response.type("application/json");
        response.header("Access-Control-Allow-Origin", "*");
        response.status(200); //200 = ok

        return HttpRequestToJson(request);
    }
    private String HttpRequestToJson(Request request) throws SQLException, ClassNotFoundException {
        System.out.println("{\n"
                +"\"body\":\"" + request.body() + "\"\n"
                +"}");
        ResultSet reply = SendQuery(request.body());
        String returnJson = "";
        while(reply.next()){
            returnJson = returnJson + "{\n"
                    +"\"Restaurant\":\"" + reply.getString("Restaurant") + "\"\n"
                    +"\"Phone\":\"" + reply.getString("Phone") + "\"\n"
                    +"\"Address\":\"" + reply.getString("Address") + "\"\n"
                    +"\"Cuisine\":\"" + reply.getString("Cuisine") + "\"\n"
                    +"}\n";
        }
        return returnJson;
    }

    public static void main(String[] programArgs) throws ClassNotFoundException, SQLException {
        RestfulServer restfulServer = new RestfulServer();
    }

}
