package smartcart.team.pj1.config;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

//DB연결 기본설정

@Configuration
@ComponentScan(basePackages = "smartcart.team.pj1")
public class DataSourceConfig {
	@Bean
	public DataSource dataSource() {//함수선언
		DataSource ds = new DataSource();
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");//JDBC 드라이버 주소 설정
		ds.setUrl("jdbc:mysql://localhost:3306/smartcart");//jdbC를 통해 MYSQL접속 , 아이피 / db이름
		ds.setUsername("root");
		ds.setPassword("adminadmin");
		
		ds.setInitialSize(10); //접속자 컨트롤하는 부분
		ds.setMaxActive(50); //찾아보기
		ds.setMaxIdle(50);
		return ds;
	}
	
	@Bean
	public JdbcTemplate jdbcTemplate() {
		return new JdbcTemplate(dataSource()); //쿼리문으로 들어가는 부분 데이터 가져와줌
	}
	
}
