# 2nd project <쇼핑몰 제작>
## HTML, CSS, JavaScript, JSP를 이용하여 쇼핑몰 제작하기

### 사용기술
* 서버: nginx + Apache tomcat 9.0m
* 프론트엔드 : 부트스트랩
* 백엔드: JSP + JSTL
* DB: MariaDB 10.1.19

### 개발환경
>* 서버 IP: 70.12.109.114:8080
>* DB_DRIVER: "org.mariadb.jdbc.Driver"
>* DB_URL: "jdbc:mariadb://70.12.109.114:3306/project"
>* DB_ID: "root"
>* DB_PASSWORD: "sds902"

### DB 테이블 정보
table name: member
id varchar(50) primary key not null
password varchar(50) not null
email varchar(100) not null
 
##16. 11. 14
### 역할 분담
* 강은선: MemberService 클래스
* 서창원: MemberController 클래스
* 송지원: MemberDAO 클래스
* 안현석: 프론트엔드 + JSP
 
### 코딩 규칙 CODING CONVENTION
* 클래스명은 첫글자 대문자로 camelCase를 지켜준다.
	>* i.e. MemberService
* 약자는 전부 대문자
>	* i.e. MemberDAO, MemberVO
* 메소드 작명 규칙
	>* make: 생성과 관련된 메소드 접두어
		>* i.e. makePage(), makeConnection()
	>* select: DB에서 정보를 읽어올 때 사용하는 접두어
		>* i.e. selectMember(), selectId()