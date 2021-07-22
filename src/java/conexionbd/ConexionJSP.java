/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexionbd;
/**
 *
 * @author diego
 */
import java.sql.*;

public class ConexionJSP 

{
    
public Connection con;
public Statement stmt;
public ResultSet rs;

public ConexionJSP( String urlBD, String usuarioBD, String passwordBD) throws Exception {

Class.forName ("com.mysql.jdbc.Driver");
con = DriverManager.getConnection (urlBD, usuarioBD, passwordBD);

stmt = con.createStatement ();
}

public ResultSet ejecutaSelect (String query) throws SQLException {

rs = stmt.executeQuery (query);
return rs;

}

//metodo para atualizar

public int ejecutaSentencia (String sql) throws SQLException 
{
    int cambios = stmt.executeUpdate (sql);
    return cambios;
}




    
    
}
