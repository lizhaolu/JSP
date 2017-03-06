/**
 * Created by ASUS on 2017/3/1.
 */
public class test {
    public void add(){
        try {
       Class.forName("com.mysql.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println(e);
        }
    }
}
