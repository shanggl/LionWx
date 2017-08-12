#LionWx 基于jeewx3.0 和weixin-java-tools 的weixin公众号管理平台

jeewx3.0 是一个很好的weixin公众号，代码生成器和easyui 的框架使得企业应用开发十分方便，但是jeewx 的weixin api 部分
不够漂亮，而weixin-java-tool 是最佳的weixin sdk 封装。因此做了一个嫁接，管理端使用jeewx 而底层与weixin交互部分使用
weixin-java-tools 

依赖：
	jdk1.7　　jeecg 的问题，仅能使用jdk1.7
	tomcat6/7
	mysql 

目前仅支持一个服务号/订阅号，不支持淘宝、企业号
