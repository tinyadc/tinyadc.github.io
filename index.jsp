<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>Happy Birthday！</title>
  <!-- 引入Material Design样式表 -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
  <!-- 设置视口的宽度和缩放比例 -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<!-- 使用Material Design布局组件 -->
<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
  <!-- 使用Material Design头部组件 -->
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <span class="mdl-layout-title">歌曲都在下面拉</span>
      <div class="mdl-layout-spacer"></div>
      <!-- 使用Material Design 导航组件 -->
      <nav class="mdl-navigation mdl-layout--large-screen-only">
        <a class="mdl-navigation__link" href="#">天天开心</a>
        <a class="mdl-navigation__link" href="#">岁岁平安</a>
        <a class="mdl-navigation__link" href="#">by小元元</a>
      </nav>
    </div>
  </header>

  <!-- 使用Material Design内容组件 -->
  <main class="mdl-layout__content">
    <!-- 使用Material Design列表组件 -->
    <ul class="mdl-list">
      <!-- 循环生成每首音乐的方块 -->
      <% String[] names = {"成都改编版","北京东路的日子", "勇气大爆发", "Upupup", "我和你", "9420", "你笑起来真好看", "萱草花"}; %>
      <% String[] urls = {"music/cd.aac","music/bjdldrz.mp3", "music/yqdbf.mp3", "music/Upupu.mp3", "music/whn.mp3", "music/9420.mp3", "music/nxqlzhk.mp3", "music/xch.mp3"}; %>
      <% for (int i = 0; i < names.length; i++) { %>
      <!-- 使用Material Design列表项组件 -->
      <li class="mdl-list__item mdl-list__item--three-line">
        <!-- 使用Material Design列表图标组件 -->
        <span class="mdl-list__item-primary-content">
<i class="material-icons mdl-list__item-avatar">a</i><%= names[i] %><!-- 把音乐名称放在图标后面 -->
</span>
        <!-- 使用Material Design列表辅助操作组件 -->
        <a href="play.jsp?name=<%= names[i] %>&url=<%= urls[i] %>" class="mdl-list__item-secondary-action">
          <button class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            播放
          </button>
        </a>
      </li>
      <% } %>
    </ul>
  </main>
</div>

<!-- 引入Material Design脚本文件 -->
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</body>
</html>