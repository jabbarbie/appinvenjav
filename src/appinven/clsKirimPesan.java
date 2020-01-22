/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package appinven;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
 


/**
 *
 */
public class clsKirimPesan {
    public String tokenKey = "879af692";
    public String tokenSecret = "lnAXBX6a3A31DCpu";
    private String pengirim = "";
    private String penerima = "";
    private String pesan = "";
    
    public clsKirimPesan()
    {
        System.out.println("Dari Cosntruct pesan");
    }
    public void kirims()
    {
      
    }
    public void getToken()
    {
//        try {
////            String jumlah;
//            String sql = "SELECT token FROM setting";
//
//            Connection conn =(Connection)appinven.koneksi.koneksiDB();
//            java.sql.Statement stm = conn.createStatement();
//            java.sql.ResultSet result = stm.executeQuery(sql);
//            result.last();
//            if(result.getRow() > 0){
//                this.tokenKey = result.getString("tokenKey");                
//                this.tokenSecret = result.getString("tokenSecret");
//            }
//            else
//                throw new Exception("Gagal Login");
////                System.out.println("Gagal");
//           
//        } catch (Exception e) {
//            
//        }
    }
   
}
