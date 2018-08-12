# GradlePluginTemplate
自动生成gradle插件并上传至本地maven库目录结构的shell脚本
# 文章说明  
[开发Gradle插件并上传至本地maven库流程](https://blog.csdn.net/qq_19431333/article/details/81604347)
# 运行  
shell脚本支持两个参数，第一个参数是目录，第二个参数是插件名，运行命令  
```
sh plugintemplate.sh Test FirstPlugin
```
生成的目录结构如下图：  
![生成目录结构](http://ww1.sinaimg.cn/large/ab7f4b86gy1fu6pxzvbfuj20ww0y6ag5.jpg)  
然后使用idea打开项目，格式化一下代码就ok了，其中xxxxx是需要修改的地方，修改文件有build.gradle文件，配置文件，已经插件代码.
