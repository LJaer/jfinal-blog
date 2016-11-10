package blog.controller;

import blog.model.Article;
import blog.model.FirstCategory;
import blog.service.ArticleService;
import blog.service.FirstCategoryService;
import com.jfinal.core.Controller;

/**
 * Created by jaer on 2016/11/10.
 */
public class ArticleDetailController extends Controller {
    public void index(){
        //一级分类
        setAttr("firstCategory", FirstCategory.dao.firstCategorieList());
        int articleid =  Integer.parseInt(getPara("articleid"));
        Article article = ArticleService.instance.findArticleById(articleid);
        setAttr("article",article);
        setAttr("currentFirstCategory", FirstCategoryService.instance.findFCategoryBySid(article.getSecondcategoryid()));
        renderJsp("/jsp/ArticleDetail.jsp");
    }
}
