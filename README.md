# 2nd project <���θ� ����>
## HTML, CSS, JavaScript, JSP�� �̿��Ͽ� ���θ� �����ϱ�

### �����
* ����: nginx + Apache tomcat 9.0m
* ����Ʈ���� : ��Ʈ��Ʈ��
* �鿣��: JSP + JSTL
* DB: MariaDB 10.1.19

### ����ȯ��
>* ���� IP: 70.12.109.114:8080
>* DB_DRIVER: "org.mariadb.jdbc.Driver"
>* DB_URL: "jdbc:mariadb://70.12.109.114:3306/project"
>* DB_ID: "root"
>* DB_PASSWORD: "sds902"

### DB ���̺� ����
table name: member
id varchar(50) primary key not null
password varchar(50) not null
email varchar(100) not null
 
##16. 11. 14
### ���� �д�
* ������: MemberService Ŭ����
* ��â��: MemberController Ŭ����
* ������: MemberDAO Ŭ����
* ������: ����Ʈ���� + JSP
 
### �ڵ� ��Ģ CODING CONVENTION
* Ŭ�������� ù���� �빮�ڷ� camelCase�� �����ش�.
	>* i.e. MemberService
* ���ڴ� ���� �빮��
>	* i.e. MemberDAO, MemberVO
* �޼ҵ� �۸� ��Ģ
	>* make: ������ ���õ� �޼ҵ� ���ξ�
		>* i.e. makePage(), makeConnection()
	>* select: DB���� ������ �о�� �� ����ϴ� ���ξ�
		>* i.e. selectMember(), selectId()