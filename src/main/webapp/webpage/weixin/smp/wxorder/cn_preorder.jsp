<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
        <title>寄件说明</title>
        <!-- 引入 WeUI -->
    <link rel="stylesheet" href="../plug-in/weixin/weui.css"></link>
　    
    </head>
    <body>		
    	<div class="page article js_show">
    <div class="page__hd">
        <h1 class="page__title">Article</h1>
        <p class="page__desc">文章</p>
    </div>
    <div class="page__bd">
        <article class="weui-article">
            <h1>大标题</h1>
            <section>
                <h2 class="title">章标题</h2>
                <section>
                    <h3>1.1 节标题</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat.
                    </p>
                    <p>
                        <img src="./images/pic_article.png" alt="">
                        <img src="./images/pic_article.png" alt="">
                    </p>
                </section>
                <section>
                    <h3>1.2 节标题</h3>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                </section>
            </section>
        </article>
    </div>
      <div class="page__ft j_bottom">
      </div>
</div>　
  <div id="floatbutton" style="z-index:9999;position:fixed! important;left:5%;bottom:2px;width:90%">
    	<div class="weui-btn-area"> 
    　        <a href="wxuserorder.do?goCreateOrder&lang=cn" class="weui-btn weui-btn_primary" 　>我同意寄件</a>
    	</div>
  </div>
    </body>
</html>