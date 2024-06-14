package util;

public class Util {
	
	public final static String base_url = "http://localhost:8080/";
	
	// 입력된 문자를 MD5형식의 해시 코드로 변환하는 코드 
	// 비밀번호 등 해시코드로 변환시켜 보안성 높이는 용도
	public static String MD5(String md5) {
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
            byte[] array = md.digest(md5.getBytes());
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < array.length; ++i) {
                sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1, 3));
            }
            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException e) {
        }
        return null;
    }

}
