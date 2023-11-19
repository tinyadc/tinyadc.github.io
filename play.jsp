<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>正在播放：${param.name}</title>
    <!-- 引入Ant Design样式表 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/antd/4.16.13/antd.min.css">
    <!-- 设置视口的宽度和缩放比例 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<!-- 使用Ant Design布局组件 -->
<div class="ant-layout ant-layout-has-sider">
    <!-- 使用Ant Design侧边栏组件 -->
    <div class="ant-layout-sider ant-layout-sider-dark" breakpoint="lg" collapsedWidth="0"><!-- 添加响应式的断点和收缩宽度 -->
        <div class="ant-layout-sider-children">
            <!-- 使用Ant Design菜单组件 -->
            <ul class="ant-menu ant-menu-dark ant-menu-root ant-menu-inline" role="menu">
                <li class="ant-menu-item ant-menu-item-selected" role="menuitem">
                    <a href="index.jsp"><span>音乐列表</span></a>
                </li>
                <li class="ant-menu-item" role="menuitem">
                    <a href="#"><span>xuan</span></a>
                </li>
                <li class="ant-menu-item" role="menuitem">
                    <a href="#"><span>xiang</span></a>
                </li>
            </ul>
        </div>
    </div>

    <!-- 使用Ant Design内容组件 -->
    <div class="ant-layout-content">
        <!-- 使用Ant Design卡片组件 -->
        <div class="ant-card ant-card-bordered" style="width: 600px; margin: 50px auto;" responsive={{ xs: 24, sm: 24, md: 24, lg: 24, xl: 24, xxl: 24 }}><!-- 添加响应式的布局 -->
            <!-- 使用Ant Design图片组件 -->
            <img src="img/fly9.jpg" alt="这是未准备好的图片" width="100%" height="300px">
            <div class="ant-card-body">
                <h1>正在播放：${param.name}</h1>
                <!-- 使用Ant Design音频组件 -->
                <audio src="${param.url}" controls autoplay></audio>
                <p><a href="index.jsp">返回音乐列表</a></p>
            </div>
        </div>
    </div>
</div>

<!-- 引入Ant Design脚本文件 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/antd/4.16.13/antd.min.js"></script>
</body>
</html>