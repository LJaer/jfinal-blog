package blog.controller;

import blog.model.Article;
import blog.model.FirstCategory;
import blog.model.ShowPictures;
import com.jfinal.core.Controller;

import java.util.List;

/**
 * Created by jaer on 2016/11/3.
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
//首页
public class IndexController extends Controller{
    public void index(){
        List<FirstCategory> firstCategoryList = FirstCategory.dao.firstCategorieList();
        //最近6篇文章,隐藏在一级分类里
        for (FirstCategory firstCategory:firstCategoryList) {
            List<Article> articleList = Article.dao.findLast6ArticByFirstCategoryId(firstCategory.getId());
            firstCategory.setArticleList(articleList);
        }
        //一级分类
        setAttr("firstCategory", firstCategoryList);
        //展示图片
        setAttr("showPicture", ShowPictures.dao.showPicturesList());
        //最近3篇文章
        setAttr("last3Article", Article.dao.getLast3Article());

        renderJsp("index.jsp");
    }
}
