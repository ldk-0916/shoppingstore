package controller;

import entity.Productinfo;
import entity.WebInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import serviceimpl.ProductinfoServiceImpl;
import serviceimpl.WebInfoServiceImpl;

import java.util.List;

@RestController
public class NavigatorAndShowProductsController {
    @Autowired
    ProductinfoServiceImpl psi;
    @Autowired
    WebInfoServiceImpl wsi;
/*查询所有的商品类型*/
    @RequestMapping("/selectAllP_type")
    public List<String> selectAllP_type(){
        return psi.selectAllP_type();
    }

    /*查询某个类型的所有商品*/
    @RequestMapping("selectAllProductsByP_type")
    public List<Productinfo> selectAllProductsByP_type(@RequestParam String p_type,@RequestParam Integer page){
        return psi.selectAllProductsByP_type(p_type,page);
    }

    @RequestMapping("getWebData")
    public List<WebInfo> selectAll(){
        return wsi.selectAll();
    }

    @RequestMapping("selectAllShopByP_type")
    public List<Productinfo> selectAllShopByP_type(@RequestParam String p_type){
        return psi.selectAllShopByP_type(p_type);
    }
}
