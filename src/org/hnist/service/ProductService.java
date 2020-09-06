package org.hnist.service;

import org.hnist.model.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

import javax.servlet.http.HttpSession;


public interface ProductService {

    public String listallProduct(@ModelAttribute Product product, Model model, HttpSession session); 
    void save(Product product);
    public String absentdel(Integer eid, Model model, HttpSession session);
    public String fd(String pid,HttpSession session);
}
