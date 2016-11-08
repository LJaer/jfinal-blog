package blog.controller;

import blog.model.FirstCategory;
import blog.service.ArticleService;
import com.jfinal.core.Controller;

import java.util.List;

/**
 * Created by jaer on 2016/11/7.
 */
//文章列表
public class ArticleListController extends Controller{
    public void index(){
        int currentPage = Integer.parseInt(getRequest().getParameter("page"));
        int firstCategoryId = Integer.parseInt(getRequest().getParameter("firstcategoryid"));
        int secondCategoryId = Integer.parseInt(getRequest().getParameter("secondcategoryid"));
        List<FirstCategory> list = FirstCategory.dao.firstCategorieList();
        //一级分类
        setAttr("firstCategory", FirstCategory.dao.firstCategorieList());
        setAttr("pageArticle", ArticleService.instance.findArticleListByFirstAndSecondCategoryId(currentPage,firstCategoryId,secondCategoryId));
        renderJsp("/jsp/articleList.jsp");
    }
}
