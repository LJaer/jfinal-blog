package blog.config;

import blog.controller.IndexController;
import blog.model._MappingKit;
import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;

/**
 * Created by jaer on 2016/11/3.
 * API引导式配置
 */
public class BlogConfig extends JFinalConfig{
    /**
     * 配置常量
     */
    @Override
    public void configConstant(Constants constants) {
        // 加载少量必要配置，随后可用PropKit.get(...)获取值
        PropKit.use("db.properties");
        constants.setDevMode(true);
    }

    /**
     * 配置路由
     */
    @Override
    public void configRoute(Routes routes) {
        routes.add("/", IndexController.class);
    }

    public static C3p0Plugin createC3p0Plugin() {
        return new C3p0Plugin(PropKit.get("jdbc.url"), PropKit.get("jdbc.username"), PropKit.get("jdbc.password").trim());
    }

    /**
     * 配置插件
     */
    @Override
    public void configPlugin(Plugins me) {
        // 配置C3p0数据库连接池插件
        C3p0Plugin C3p0Plugin = createC3p0Plugin();
        me.add(C3p0Plugin);

        // 配置ActiveRecord插件
        ActiveRecordPlugin arp = new ActiveRecordPlugin(C3p0Plugin);
        me.add(arp);

        // 所有配置在 MappingKit 中搞定
        _MappingKit.mapping(arp);

    }

    /**
     * 配置全局拦截器
     */
    @Override
    public void configInterceptor(Interceptors interceptors) {

    }

    /**
     * 配置处理器
     */
    @Override
    public void configHandler(Handlers handlers) {

    }

    /**
     * 建议使用 JFinal 手册推荐的方式启动项目
     * 运行此 main 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此
     */
    public static void main(String[] args) {
        JFinal.start("web", 80, "/", 5);
    }
}
