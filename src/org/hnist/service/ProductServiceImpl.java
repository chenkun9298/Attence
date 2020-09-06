package org.hnist.service;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.hnist.dao.*;

import org.hnist.model.*;
import org.hnist.service.*;


@Service("ProductService")
@Transactional
public class ProductServiceImpl implements ProductService {
    //注入ProductMapper
    @Autowired
    private ProductMapper productMapper;
    
    @Override


    public String listallProduct(@ModelAttribute Product product, Model model, HttpSession session){
 		List<Product> listallProduct = productMapper.listallProduct();
 		
 		session.setAttribute("listallProduct", listallProduct);
 		
 		
		return "admin/list";
 
 }
    public String absentdel(Integer eid, Model model, HttpSession session){
		
    	productMapper.absentdel(eid);
   	
    	List<Product> listallProduct = productMapper.listallProduct();
 		
 		session.setAttribute("listallProduct", listallProduct);
 		
			return "admin/list";
		
}
    
 public String fd(String pid,HttpSession session){
	
	 session.setAttribute("product",  productMapper.fd(pid));
		return "admin/fd";
	

}
    @Override
    public void save(Product product) {
        productMapper.save(product);
    }
}