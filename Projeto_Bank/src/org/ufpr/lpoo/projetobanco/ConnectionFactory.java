package org.ufpr.lpoo.projetobanco;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
   public Connection getConnection()
   {
       Connection con = null;
       try{       
          Class.forName("org.postgresql.Driver");
          con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Projeto_banco", "postgres", "root");
       }
       catch (Exception e){
          e.printStackTrace();
          System.err.println(e.getClass().getName()+": "+e.getMessage());
          System.exit(0);          
       }
       return con;     
            
   }
}
