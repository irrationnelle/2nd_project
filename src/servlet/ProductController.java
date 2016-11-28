package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductService;

@WebServlet("/product.do")
public class ProductController extends HttpServlet{

	private ProductService service = ProductService.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		execute(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		request.setCharacterEncoding("EUC-KR");
		execute(request,response);
	}
	
	public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		
		String action = request.getParameter("action");
		String viewPath = "";
		
		
		
		
	}
}
