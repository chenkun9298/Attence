package org.hnist.controller;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.hnist.model.*;
import org.hnist.service.*;

import org.hnist.util.MyUtil;

//controller方法
@Controller
public class ProductController {
    //注入ProductService
    @Autowired
    private ProductService productService;
    
   
    @RequestMapping("/list")  
	public String listall(@ModelAttribute Product product, Model model, HttpSession session) {
		return productService.listallProduct(product, model, session);
		
	}
    
    @RequestMapping("/absentdel")
	public String absentdel(Integer eid, Model model, HttpSession session) {
		return productService.absentdel(eid, model, session);
	}
    @RequestMapping("/fd")
	public String fd(String pid,HttpSession session) {
		return productService.fd(pid,session);
	}
    @RequestMapping("/addProduct")
    public String fileUpload(MultipartFile file,Product product, ModelMap map) throws IOException {

        /**
         * 上传图片
         */
        //图片上传成功后，将图片的地址写到数据库
    	
        String filePath = "E:\\apache-tomcat-9.0.33\\webapps\\Attence\\images";//保存图片的路径
        //获取原始图片的拓展名
        String originalFilename = file.getOriginalFilename();
        //新的文件名字
        String newFileName = UUID.randomUUID()+originalFilename;//封装上传文件位置的全路径
        File targetFile = new File(filePath,newFileName); //把本地文件上传到封装上传文件位置的全路径
        file.transferTo(targetFile);
        product.setPimage(newFileName);
        
        /**
         * 保存商品
         */
        productService.save(product);
        return "redirect:/list.do"; 
    }
    
}
