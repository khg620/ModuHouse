package moduhouse.dao.store;

import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import moduhouse.bean.store.ProductBean;
import moduhouse.bean.store.ProductDetailBean;
import moduhouse.mapper.store.ProductDetailMapper;

@Repository
@RequiredArgsConstructor
public class ProductDetailDao {
	
	private final ProductDetailMapper productDetailMapper;

	//상품 상세 페이지 이미지 
	public List<ProductDetailBean> getProductImage(int product_idx) {
		return productDetailMapper.getProductImage(product_idx);
	}
	
	//상품 상세 페이지 상품 정보
	public ProductBean getProductInfo(int product_idx) {
		return productDetailMapper.getProductInfo(product_idx);
	}
}
