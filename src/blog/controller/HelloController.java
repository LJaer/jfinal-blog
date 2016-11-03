package blog.controller;

import com.jfinal.core.Controller;

/**
 * Created by jaer on 2016/11/3.
 */
public class HelloController extends Controller{
    public void index(){
        renderText("cs");
    }
}
