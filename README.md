# 2nd project <쇼핑몰 제작>
## HTML, CSS, JavaScript, JSP를 이용하여 쇼핑몰 제작하기

### 사용기술
* 서버: CentOS (OS) + nginx (Server) + Apache tomcat 7.0 (WAS)
* 프론트엔드 : 부트스트랩
* 백엔드: JSP + JSTL
* DB: MariaDB 10.1.19
* DB 컴퓨터 P/W : rStudy!234

### 개발환경
>* 서버 IP: 70.12.109.114:8080
>* DB_DRIVER: "org.mariadb.jdbc.Driver"
>* DB_URL: "jdbc:mariadb://70.12.109.114:3306/project"
>* DB_ID: "root"
>* DB_PASSWORD: "sds902"


### 콘솔로 DB 접속 하는 법
* 1. windows 키 + R
* 2. cmd 입력
* 3. mysql -h 70.12.109.114 -uroot -p
* 4. 비밀번호 입력하라고 뜨면 : sds902 입력!


### DB 테이블 정보
#### table name: member
* id varchar(50) primary key not null
* password varchar(50) not null
* email varchar(100) not null

#### table name: product
* product_id int primary key not null auto_increment,
* product_name varchar(100) not null,
* product_stock int not null,
* product_price int not null,
* product_detail text not null,
* product_image text not null

#### table name: cart
* cart_pk int primary key not null auto_increment,
* cart_id int not null,
* cart_amount int not null,
* user_id varchar(50) not null,
* product_id int not null,
* foreign key(user_id) references member(id),
* foreign key(product_id) references product(product_id)

#### table name: order_info
* order_pk int primary key not null auto_increment,  
* order_id int not null,
* order_date datetime not null,
* order_amount int not null,
* order_status varchar(100) not null,
* user_id varchar(50) not null,
* product_id int not null,
* foreign key(user_id) references member(id),
* foreign key(product_id) references product(product_id)

##16. 11. 23
### 역할 분담!
* 강은선: 프론트엔드 + JSP (템플릿 정보: https://p.w3layouts.com/demos/swim_wear/web/ )
* 서창원: ProductDAO, OrderInfoDAO 클래스
* 송지원: 서블릿 작업(아마도 ProductController, OrderInfoController 클래스)
* 안현석: ProductService, OrderInfoService 클래스

##16. 11. 14
### 역할 분담!
* 강은선: MemberService 클래스
* 서창원: MemberController 클래스
* 송지원: MemberDAO 클래스
* 안현석: 프론트엔드 + JSP

### 코딩 규칙 CODING CONVENTION
* 클래스명은 첫글자 대문자로 camelCase를 지켜준다.
	* i.e) MemberService
* 약자는 전부 대문자
	* i.e) MemberDAO, MemberVO
* 메소드 작명 규칙
	* make: 생성과 관련된 메소드 접두어
		* i.e) makePage(), makeConnection()
	* show: 화면에 정보를 표시할 때 사용하는 메소드 접두어 
	* change: 화면에 표시되는 정보를 변경할 때 사용하는 메소드 접두어
	* delete: 삭제 관련 메소드 접두어
	* insert: DB에 VO객체를 통해 정보 입력할 때 사용하는 접두어 
	* select: DB에서 정보를 읽어올 때 사용하는 접두어
		* i.e) selectMember(), selectId()
