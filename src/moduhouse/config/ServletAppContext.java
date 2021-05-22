package moduhouse.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.type.JdbcType;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import moduhouse.bean.user.UserBean;
import moduhouse.interceptor.CheckSignInInterceptor;
import moduhouse.interceptor.CheckWriterInterceptor;
import moduhouse.interceptor.HeaderInterceptor;
import moduhouse.interceptor.StoreTopMenuInterceptor;
import moduhouse.mapper.community.QnAKeywordsMapper;
import moduhouse.mapper.community.QnAMapper;
import moduhouse.mapper.include.StoreTopMenuMapper;
import moduhouse.mapper.store.StoreMainMapper;
import moduhouse.mapper.user.UserMapper;
import moduhouse.service.community.QnAService;
import moduhouse.service.include.StoreTopMenuService;

@Configuration
@EnableWebMvc
@ComponentScan("moduhouse.controller")
@ComponentScan("moduhouse.dao")
@ComponentScan("moduhouse.service")
@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer{
	
	//db.properties
	@Value("${db.classname}")
	private String db_classname;
	@Value("${db.url}")
	private String db_url;
	@Value("${db.username}")
	private String db_username;
	@Value("${db.password}")
	private String db_password;

	@Autowired
	private StoreTopMenuService storeTopMenuService;
	@Autowired
	private QnAService qnaService; 
	@Autowired
	private UserBean signInUserBean;
	
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/",".jsp");
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/image/icons/**").addResourceLocations("file:///D://00_Projects//모두의집이미지/icons/");
		registry.addResourceHandler("/image/banner/**").addResourceLocations("file:///D://00_Projects//모두의집이미지/store_main_banner/");
		registry.addResourceHandler("/image/category/**").addResourceLocations("file:///D://00_Projects//모두의집이미지/product_category/");
		registry.addResourceHandler("/image/products/**").addResourceLocations("file:///D://00_Projects//모두의집이미지/products/");
		registry.addResourceHandler("/image/product_detail/**").addResourceLocations("file:///D://00_Projects//모두의집이미지/product_detail/");
		registry.addResourceHandler("/image/keywords/**").addResourceLocations("file:///D://00_Projects//모두의집이미지/keywords/");
		registry.addResourceHandler("/image/user/**").addResourceLocations("file:///D://00_Projects//모두의집이미지/user/");
		registry.addResourceHandler("/upload/**").addResourceLocations("file:///D://00_Projects//모두의집첨부파일/");
	}
	
	//데이터베이스
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);
		
		return source;
	}
	
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();
		factory.getConfiguration().setJdbcTypeForNull(JdbcType.NULL); 
		return factory;
	}
	
	//interceptor
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		WebMvcConfigurer.super.addInterceptors(registry);
		
		//상단 공통 메뉴
		//헤더
		HeaderInterceptor headerInterceptor = new HeaderInterceptor(signInUserBean);
		InterceptorRegistration reg1 = registry.addInterceptor(headerInterceptor);
		reg1.addPathPatterns("/**");
		
		//스토어 nav
		StoreTopMenuInterceptor storeTopMenuInterceptor = new StoreTopMenuInterceptor(storeTopMenuService);
		InterceptorRegistration reg2 = registry.addInterceptor(storeTopMenuInterceptor);
		reg2.addPathPatterns("/**");
		
		//마이페이지 nav
		
		
		//로그인 필요한 페이지 로그인 확인 후 분기 처리
		CheckSignInInterceptor checkSignInInterceptor = new CheckSignInInterceptor(signInUserBean);
		InterceptorRegistration reg3 = registry.addInterceptor(checkSignInInterceptor);
		reg3.addPathPatterns("/user/mypage/*","/user/sign_out","/community/*");
		reg3.excludePathPatterns("/community/question","/community/read_question"); 
		
		//글작성자와 로그인 사용자 일치여부 확인
		CheckWriterInterceptor checkWriterInterceptor = new CheckWriterInterceptor(signInUserBean, qnaService);
		InterceptorRegistration reg4 = registry.addInterceptor(checkWriterInterceptor);
		reg4.addPathPatterns("/community/edit_question","/community/delete_question");
	}
	
	//mapper
	@Bean
	public MapperFactoryBean<StoreTopMenuMapper> getTopMenuMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<StoreTopMenuMapper> factoryBean = new MapperFactoryBean<StoreTopMenuMapper>(StoreTopMenuMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<UserMapper>(UserMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<QnAMapper> getQnAMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<QnAMapper> factoryBean = new MapperFactoryBean<QnAMapper>(QnAMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<QnAKeywordsMapper> getQnAKeywordsMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<QnAKeywordsMapper> factoryBean = new MapperFactoryBean<QnAKeywordsMapper>(QnAKeywordsMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<StoreMainMapper> getStoreMainMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<StoreMainMapper> factoryBean = new MapperFactoryBean<StoreMainMapper>(StoreMainMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	//프로퍼티 파일들 간 충돌 방지
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		res.setBasename("/WEB-INF/properties/error_message");;
		
		return res;
	}
	
	//파일 첨부
	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}
}
