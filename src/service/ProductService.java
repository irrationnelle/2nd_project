package service;

import java.util.List;

import dao.OrderInfoDAO;
import dao.ProductDAO;
import vo.OrderInfoVO;
import vo.ProductPageVO;
import vo.ProductVO;

public class ProductService {
	private static ProductService instance = new ProductService();

	public static ProductService getInstance() {
		return instance;
	}

	private ProductService() {
	}

	private ProductDAO dao = ProductDAO.getInstance();
	private OrderInfoDAO orderdao = OrderInfoDAO.getInstance();

	public ProductVO showDetails(int productId) {
		ProductVO clickedProduct = dao.select(productId);
		if (clickedProduct != null) {
			return clickedProduct;
		} else {

			return null;
		}
	}

	public ProductPageVO makePage(int currentPage) {
		final int PAGE_PER_COUNT = 6; // ���������� ������ ���ǰ���

		int startRow = (currentPage - 1) * PAGE_PER_COUNT;
		int endRow = startRow + PAGE_PER_COUNT;

		// ���� �������� ������ ���� DB���� ��ȸ
		List<ProductVO> productList = dao.selectList(startRow, endRow);

		// �� �Խñ� ���� ��ȸ
		int productTotalCount = dao.selectCount();

		// �� �������� ���
		int totalPage = productTotalCount / PAGE_PER_COUNT;
		if (productTotalCount % PAGE_PER_COUNT != 0)
			totalPage++;

		// ������ �ϴ��� ���������� ���
		int startPage = (currentPage - 1) / 10 * 10 + 1;

		// ������ �ϴ��� �������� ���
		int endPage = startPage + 9;
		if (endPage > totalPage)
			endPage = totalPage;

		return new ProductPageVO(productList, currentPage, startPage, endPage, totalPage);
	}

	public boolean changeStock(String userId, int orderPk) {
		OrderInfoVO order = orderdao.select(userId, orderPk);
		ProductVO product = dao.select(order.getProductId());
		boolean changeStockResult = false;
		try {
			int OrderAmount = order.getOrderAmount();
			int productStock = product.getProductStock();
			if (productStock >= OrderAmount) {
				product.setProductStock(productStock - OrderAmount);
				dao.update(product);
				changeStockResult = true;
			} else {
				changeStockResult = false;
			}
		} catch (Exception e) {
			System.out.println("changeStock Error");
		}
		return changeStockResult;
	}

}
