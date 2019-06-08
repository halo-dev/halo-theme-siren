<#--
/**
 * The template for displaying 404 pages (not found).
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package Akina
 */

-->
<#import "/common/macro/common_macro.ftl" as common>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title itemprop="name"><?php global $page, $paged;wp_title( '-', true, 'right' );
bloginfo( 'name' );$site_description = get_bloginfo( 'description', 'display' );
if ( $site_description && ( is_home() || is_front_page() ) ) echo " - $site_description";if ( $paged >= 2 || $page >= 2
        ) echo ' - ' . sprintf( __( '第 %s 页'), max( $paged, $page ) );?>
    </title>

    <@common.globalHeader />

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


