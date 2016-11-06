package blog.controller;

import blog.model.ShowPictures;
import com.jfinal.core.Controller;

/**
 * Created by jaer on 2016/11/6.
 */
public class ShowPictureController extends Controller{
    public void picturesList(){
        renderJson(ShowPictures.dao.showPicturesList());
    }
}
