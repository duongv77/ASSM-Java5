package com.it15306.mapper;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.id15306.dto.ProductDTO;
import com.it15306.entity.Product;

@Component
public class ProductMapper {
	@Autowired
	private ModelMapper mapper;
	
	//convert từ DTO về entity
	public Product convertToEntity(ProductDTO productDTO) {
		Product entity = new Product();
		mapper.map(productDTO, entity);
		return entity;
	}
	
	//convert từ entity về DTO
	public ProductDTO convertToDTO(Product entity) {
		ProductDTO productDTO = new ProductDTO();
		mapper.map(entity, productDTO);
		return productDTO;
	}
}
