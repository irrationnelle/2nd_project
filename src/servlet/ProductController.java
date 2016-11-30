package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductService;
import vo.ProductPageVO;
import vo.ProductVO;

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
		
		ProductService service = ProductService.getInstance();
		
		switch(action){
		case "category":
			int currentPage = 1;
			String currentPageStr = request.getParameter("page");
			
			if(currentPageStr != null && currentPageStr.length()>=0) {
				currentPage = Integer.parseInt(currentPageStr);
			}
			
			ProductPageVO productPage = service.makePage(currentPage);
			request.setAttribute("productPage", productPage);
			System.out.println(productPage.getTotalPage());
			viewPath = "category.jsp";
			break;
		
		case "detail":
			int clickProduct = 1;
			String clickProductStr = request.getParameter("productNum");
			
			if(clickProductStr != null && clickProductStr.length()>=0) {
				clickProduct = Integer.parseInt(clickProductStr);
			}
			
			ProductVO productDetail = service.showDetails(clickProduct);
			request.setAttribute("productDetail", productDetail);
			viewPath = "product_detail.jsp";
			
			break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
		dispatcher.forward(request, response);
		
	}
}
