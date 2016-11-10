package blog.service;

import blog.model.Article;
import blog.model.SecondCategory;
import blog.utils.HtmlParse;
import com.jfinal.plugin.activerecord.Page;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.List;

/**
 * Created by jaer on 2016/11/7.
 */
public class ArticleService {
    public static final ArticleService instance = new ArticleService();

    //分页查询
    public Page<Article> findArticleListByFirstAndSecondCategoryId(int pageNum, int firstCategoryId, int secondCategoryId){
        Page<Article>  articlePage = Article.dao.paginate(pageNum,10,"select * ","from article where secondcategoryid in (select id secondcategoryid from second_category where firstcategoryid = "+firstCategoryId+") order by time desc");
        for (Article article:articlePage.getList()) {
            article = articleToArticleDetail(article);
        }
        return articlePage;
    }

    //将article的正文和正文图片，二级分类图标设置到article属性
    public Article articleToArticleDetail(Article article){
        String html = article.getHtml();
        if(html!=null){
            Elements elements = HtmlParse.getInstance().getHtmlImg(html);
            //设置正文图片
            if(elements.size()>0){
                String src = "";
                for (int j = 0; j < 1; j++) {//这里只需要取出来一张照片即可
                    Element element = elements.get(j);
                    src = element.attr("src");
                    article.setContextimage(src);
                }
            }
            //设置正文纯文本
            String text = HtmlParse.getInstance().getHtmlText(html);
            if(text.length()>170){
                text = text.substring(0, 150);
            }
            text += "...";
            article.setText(text);
            //设置二级分类图标
            int id = article.getSecondcategoryid();
            SecondCategory secondCategory = SecondCategory.dao.findById(id);
            String imgSrc = secondCategory.getImg();
            article.setSecondcategoryimage(imgSrc);
        }
        return  article;
    }

    //根据articleid查询article
    public Article findArticleById(int articleid){
        List<Article> articleList = Article.dao.find("select * from article where id = ?",articleid);
        return articleList.get(0);
    }
}
