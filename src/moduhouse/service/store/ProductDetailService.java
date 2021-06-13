package moduhouse.service.store;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.order.OrderBean;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.store.ProductDetailBean;
import moduhouse.bean.store.ProductOption1Bean;
import moduhouse.bean.store.ProductOption2Bean;
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
	
	//상품 옵션1 조회
	public List<ProductOption1Bean> getProductOption1(int product_idx) {
		return productDetailDao.getProductOption1(product_idx);
	}
	
	//상품 옵션2 조회
	public List<ProductOption2Bean> getProductOption2(int product_idx, int option1_idx) {
		return productDetailDao.getProductOption2(product_idx, option1_idx);
	}

	public int getOption2Cnt(int product_idx) {
		return productDetailDao.getOption2Cnt(product_idx);
	}

	public OrderBean getPrice(int option1_idx, int option2_idx) {
		if(option2_idx != 0) {
			return productDetailDao.getOptionsPrice(option1_idx, option2_idx);			
		} else {
			return productDetailDao.getOption1Price(option1_idx);
		}
	}
}
