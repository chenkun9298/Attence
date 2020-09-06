package org.hnist.dao;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.hnist.model.*;
import org.springframework.stereotype.Repository;
    @Repository("ProductMapper")
    @Mapper
    public interface ProductMapper {
        //保存商品
        void save(Product product);
        public int absentdel(Integer eid);
        public List<Product> listallProduct();
        public Product fd(String pid);
    }

