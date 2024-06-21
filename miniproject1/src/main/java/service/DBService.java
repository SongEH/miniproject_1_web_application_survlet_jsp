package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBService {

	// single-ton pattern : 객체 1개만 생성해서 이용하자
	static DBService single = null;

	DataSource ds = null;
	
	static public DBService getInstance() {

		//없으면 생성해라
		if (single == null)
			single = new DBService();

		return single;
	}

	// 외부에서 객체생성하지 말아라...
	private DBService() {

		
		try {
			//JNDI을 이용해서 DataSource정보를 얻어온다
			//1.InitialContext생성(JNDI -> interface 추출 객체)
			InitialContext ic = new InitialContext();
			
			//2.Context 정보 얻어온다 -> context는 javax.naming / context는 object이므로 cast해야 함
			Context context = (Context) ic.lookup("java:comp/env");
			
			//3.naming을 이용해서 DataSource를 얻어온다
			ds = (DataSource) context.lookup("jdbc/oracle_test");
			
			//2번과 3번을 한번에
			//ds = (DataSource) ic.lookup("java:comp/env/jdbc/oracle_test");
			
			
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}//end:DBService()
	
	
	public Connection getConnection() throws SQLException {
		
		//DataSource을 이용해서 BasicDataSource가 관리하고 있는 컨넥션을 요청
		return ds.getConnection();
	}
	
	
	
	
	
	
	
}
