# MockServer


> Began

**作为一个iOS开发，实在忍不了API的开发速度。在此，我要水一波。**

> 良好的开发环境应该是：

1. 前两周完善的产品原型
2. 前一周竣工的UI
3. 前三天后台API

然而一切并非如此，边开发，边要Api已经算好的了，每次都是自己搭好UI等着API，拿到接口后还要调试。那么，我希望这篇文章可能对你有用。

> 工具：

1. 抓包工具：Charles（相信所有的开发对它都不陌生）

2. 文本编辑工具：Sublime Text很好的一款文本编辑攻击

3. 接口调试工具：Postman（最新版也支持MockServer服务了）

> Let's Began：

**1. 先用Charles抓到请求的接口**

![image](https://github.com/VansXY/MockServer/blob/master/MockServerDemo/Readme_image/2.png)

**2. 复制获取到的数据，用Sublime Text保存成.json格式.保存在一个自己知道的路径下，备用**

![image](https://github.com/VansXY/MockServer/blob/master/MockServerDemo/Readme_image/6.png)

**3. 选中接口，右击选择Map Local**

![image](https://github.com/VansXY/MockServer/blob/master/MockServerDemo/Readme_image/4.png)

**4. 点击choose，选择保存的.json文件**

![image](https://github.com/VansXY/MockServer/blob/master/MockServerDemo/Readme_image/3.png)

**5. 见证奇迹的事情将要发生了，重新点击按钮，请求一次数据，你会发现获得的数据就是自己保存的.json文件数据**

![image](https://github.com/VansXY/MockServer/blob/master/MockServerDemo/Readme_image/5.png)

> 应用：

1. 自己知道数据格式，没法在应用上展示
2. 模拟错误场景
3. 学习HTTP协议错误，例如：404、405、500、503的错误类型


**工欲善其事，必先利其器。**

> End
