package org.xyafu.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

public class MybatilsUtils {
	private static SqlSessionFactory sqlSessionFactory=null;
	
	static {
		try {
			InputStream inputStream=Resources.getResourceAsStream("mybatis-config.xml");
			sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static SqlSession getSession() {
		return sqlSessionFactory.openSession();
	}
	
}
