package jsp.util;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class Sec extends HttpServletRequestWrapper{
    
    public Sec(HttpServletRequest request) {
		super(request);
		// TODO Auto-generated constructor stub
	}
    
	@Override
    public String getParameter(String key) {
        String value = "";
        
        if (key != null && key.equals("pw")) {
            value = getSha256(super.getParameter("pw"));
        } else {
            value = super.getParameter(key);
        }
        
        
        return value;
    }
    public static String getSha256(String pwd) {
        String encPwd = "";
        
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] bytes = pwd.getBytes(Charset.forName("UTF-8"));
            md.update(bytes);
            
            encPwd = Base64.getEncoder().encodeToString(md.digest());
            
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        
        
        return encPwd;
    }
}
