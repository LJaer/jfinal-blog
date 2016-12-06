## jfinal-blog

###1、项目介绍
对项目https://github.com/LJaer/show-message项目用JFinal进行重写

主要重写了前端展示，使用JFinal，后端管理用eova进行简单管理

###2、开发环境
PC： win10

IDE：Intellij IDEA 2016

JFinal：2.2

eova：1.5

浏览器：Chrome53

数据库：mysql5.6

tomcat8

###3、运行效果
####前端展示效果
![pre](http://oe53dpmqz.bkt.clouddn.com/20161206002.gif)

####后端展示效果
![background](http://oe53dpmqz.bkt.clouddn.com/20161206003.gif)

###4、部署

项目分了两个分支，master分支是前端展示的分支，eova分支是后端管理的分支，还用到tomcat的图片服务器

#####（1）、创建数据库jfinal_blog

导入数据库SQL文件夹下的SQL

修改jfinal_blog项目下的db.properties文件配置

#####（2）、配置tomcat静态服务器

由于eova图片管理需要配置一个图片静态服务器

参考配置链接：http://www.kancloud.cn/jieven/eova/217078

Tomcat发布静态服务：

下载Tomcat

修改Tomcat /conf/server.xml 在Host节点中加入Context，参考下面

```
      <Host name="localhost"  appBase="webapps"
            unpackWARs="true" autoDeploy="true">
         <Context path="/" docBase="D://soft//eova//static" />
      </Host>
```

启动图片服务器，假设HTTP端口号为18080

将图片服务器文件夹下的内容拷贝到目标服务器

#####（3）、将jfinal_blog项目导入ide
这里使用jetty启动，端口80

#####（4）、将eova_blog项目导入ide
这里使用jetty启动，端口8080

Eova图片服务配置：

```
#上传图片服务域名(端口自己修改哦)
domain_img = http://127.0.0.1:18080

#静态根目录
static_root = D:/soft/eova/static
```

eova_blog项目jdbc配置在default/jdbc.config

##### （5）、启动项目

前端展示访问：localhost

后端管理访问：localhost:8080




联系方式：

qq：673820543