package blog.service;

import blog.model.FirstCategory;

/**
 * Created by jaer on 2016/11/10.
 */
public class FirstCategoryService {
    public static final FirstCategoryService instance = new FirstCategoryService();

    //根据二级分类id查询一级分类
    public FirstCategory findFCategoryBySid(int secondCategoryId){
        return FirstCategory.dao.find("select * from first_category where id = (select firstcategoryid from second_category where id="+secondCategoryId+")").get(0);
    };
}
