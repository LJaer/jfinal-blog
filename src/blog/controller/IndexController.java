package blog.controller;

import blog.model.FirstCategory;
import blog.model.ShowPictures;
import com.jfinal.core.Controller;

import java.util.List;

/**
 * Created by jaer on 2016/11/3.
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class IndexController extends Controller{
    public void index(){
        List<FirstCategory> firstCategoryList = FirstCategory.dao.firstCategorieList();
        //一级分类
        setAttr("firstCategory", FirstCategory.dao.firstCategorieList());
        //展示图片
        setAttr("showPictures", ShowPictures.dao.showPicturesList());
        render("index.jsp");
    }
}
