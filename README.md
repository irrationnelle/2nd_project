# 2nd project <���θ� ����>
## HTML, CSS, JavaScript, JSP�� �̿��Ͽ� ���θ� �����ϱ�

### �����
* ����: CentOS (OS) + nginx (Server) + Apache tomcat 7.0 (WAS)
* ����Ʈ���� : ��Ʈ��Ʈ��
* �鿣��: JSP + JSTL
* DB: MariaDB 10.1.19
* DB ��ǻ�� P/W : rStudy!234

### ����ȯ��
>* ���� IP: 70.12.109.114:8080
>* DB_DRIVER: "org.mariadb.jdbc.Driver"
>* DB_URL: "jdbc:mariadb://70.12.109.114:3306/project"
>* DB_ID: "root"
>* DB_PASSWORD: "sds902"


### �ַܼ� DB ���� �ϴ� ��
* 1. windows Ű + R
* 2. cmd �Է�
* 3. mysql -h 70.12.109.114 -uroot -p
* 4. ��й�ȣ �Է��϶�� �߸� : sds902 �Է�!


### DB ���̺� ����
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
### ���� �д�!
* ������: ����Ʈ���� + JSP (���ø� ����: https://p.w3layouts.com/demos/swim_wear/web/ )
* ��â��: ProductDAO, OrderInfoDAO Ŭ����
* ������: ���� �۾�(�Ƹ��� ProductController, OrderInfoController Ŭ����)
* ������: ProductService, OrderInfoService Ŭ����

##16. 11. 14
### ���� �д�!
* ������: MemberService Ŭ����
* ��â��: MemberController Ŭ����
* ������: MemberDAO Ŭ����
* ������: ����Ʈ���� + JSP

### �ڵ� ��Ģ CODING CONVENTION
* Ŭ�������� ù���� �빮�ڷ� camelCase�� �����ش�.
	* i.e) MemberService
* ���ڴ� ���� �빮��
	* i.e) MemberDAO, MemberVO
* �޼ҵ� �۸� ��Ģ
	* make: ������ ���õ� �޼ҵ� ���ξ�
		* i.e) makePage(), makeConnection()
	* show: ȭ�鿡 ������ ǥ���� �� ����ϴ� �޼ҵ� ���ξ� 
	* change: ȭ�鿡 ǥ�õǴ� ������ ������ �� ����ϴ� �޼ҵ� ���ξ�
	* delete: ���� ���� �޼ҵ� ���ξ�
	* insert: DB�� VO��ü�� ���� ���� �Է��� �� ����ϴ� ���ξ� 
	* select: DB���� ������ �о�� �� ����ϴ� ���ξ�
		* i.e) selectMember(), selectId()
