<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<!--  
Spring Security 사용절차

1.의존설정 - pom.xml에 시큐리티를 위한 의존설정을 한다. 
	<dependency>
		<groupId>org.springframework.security</groupId>
		<artifactId>spring-security-web</artifactId>
		<version>4.2.1.RELEASE</version>
	</dependency>
	<dependency>
		<groupId>org.springframework.security</groupId>
		<artifactId>spring-security-config</artifactId>
		<version>4.2.1.RELEASE</version>
	</dependency>
	<dependency>
		<groupId>org.springframework.security</groupId>
		<artifactId>spring-security-taglibs</artifactId>
		<version>4.2.1.RELEASE</version>
	</dependency>

2. 시큐리티 설정파일의 경로와 파일명 지정 : web.xml
	아래와같이 컨텍스트 초기화 파라미터로 설정파일의 위치를 지정한다. 
	<context-param>
		<param-name>contextConfigLocation</param-name>
		<param-value>
			/WEB-INF/spring/root-context.xml
			/WEB-INF/spring/security-context3.xml
		</param-value>
	</context-param>

3.위에서 지정한 위치에 스프링 시큐리티 설정파일을 추가한다. 
	-파일 생성시 네임스페이스를 추가한다. (security)
	-intercept-url과 같은 관련속성은 해당 파일을 참조한다. 
	-security: 와 같은 접두어를 제거하고 싶을때는 3번 파일을 참조하여
		네임스페이스 부분을 조금 수정한다.  

4.시큐리티 적용을 위한 필터 설정을 한다. : web.xml
	해당 설정을 통해 프로젝트의 모든 요청에 대해 시큐리티가 적용된다. 
	필터가 없으면 시큐리티는 적용되지 않는다. 
	<filter>
		<filter-name>springSecurityFilterChain</filter-name>
		<filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
	</filter>
	<filter-mapping>
		<filter-name>springSecurityFilterChain</filter-name>
		<url-pattern>/*</url-pattern>
	</filter-mapping>	

5. 4번까지의 과정을 통해 시큐리티는 사용가능하고, 로그인페이지에 대한 
	커스터마이징이나 JDBC연동은 설정파일 2, 3을 참조한다. 
-->
<body>
 
	<h2>Spring Security 사용1 - Default 페이지 사용</h2>
	<li>
		<a href="./security1-1/index.do" target="_blank">
			Step1 페이지 바로가기(인증필요)
		</a>
	</li>
	<li>
		<a href="./security1-2/access.do" target="_blank">
			Step1 페이지 바로가기(인증불필요)
		</a>
	</li>
	
	<h2>Spring Security - Step2(커스텀 페이지 사용하기)</h2>
	<li>
		<a href="./security2/index.do" target="_blank">
			Step2 INDEX 페이지 바로가기
		</a>
	</li>
	<li>
		<a href="./security2/login.do" target="_blank">
			Step2 로그인 페이지 바로가기
		</a>
	</li>
	<li>
		<a href="./security2/admin/main.do" target="_blank">
			Step2 관리자영역 바로가기
		</a>
	</li>
	<li>
		<a href="./security2/accessDenied.do" target="_blank">
			Step2 접근불가안내페이지 바로가기
		</a>
	</li>
	
	  
	 
	<!--  
	프로젝트에 스프링 시큐리티를 적용할경우 <form태그를
	사용할때는 인증이 필요없는 페이지에서도 반드시 
	<form:form 태그 라이브러리를 사용해야 한다. 
	해당 태그를 사용하면 _csrf라는 hidden폼이 자동을 삽입되고
	시큐리티는 이값을 사용하여 정상적인 폼값인지 확인한다.
	-->
	<h2>Spring Security 사용시 주의사항</h2>
	<li>
		<a href="./security3/form.do" target="_blank">
			Form 페이지 바로가기
		</a>
	</li>

</body>
</html>

