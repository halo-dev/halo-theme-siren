<#--
/**
 * The template for displaying 404 pages (not found).
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package Akina
 */

-->
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title itemprop="name">未找到页面 - ${options.blog_title!}</title>

    <@global.head />

    <link rel='stylesheet' id='siren-css'  href='${static!}/style.css?ver=2.0.6.170420' type='text/css' media='all' />

</head>
<body class="error404 logged-in hfeed">
<section class="error-404 not-found">
    <div class="error-img">
        <img src="${static!}/images/404.jpg">
    </div>
    <div class="err-button back">
        <a id="golast" href=javascript:history.go(-1);>返回上一页</a>
        <a id="gohome" href="${context!}">返回主页</a>
    </div>
</section>
</body>


