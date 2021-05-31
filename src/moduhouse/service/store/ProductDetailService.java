package moduhouse.service.store;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.store.ProductDetailBean;
import moduhouse.dao.store.ProductDetailDao;

@Service
@RequiredArgsConstructor
public class ProductDetailService {

	private final ProductDetailDao productDetailDao;
	
	//상품 상세 페이지 이미지 
	public List<ProductDetailBean> getProductImage(int product_idx) {
		return productDetailDao.getProductImage(product_idx);
	}
	
	//상품 상세 페이지 상품 정보
	public ProductBean getProductInfo(int product_idx) {
		return productDetailDao.getProductInfo(product_idx);
	}
}
