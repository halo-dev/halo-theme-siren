<#--
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Akina
*/
-->
<#import "/common/macro/common_macro.ftl" as common>
<#macro header title,keywords,description>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title itemprop="name">${title!}</title>

	<meta name="description" content="${description}"/>
	<meta name="keywords" content="${keywords!}"/>

	<@common.globalHeader />

	<link rel='stylesheet' id='siren-css'  href='${static!}/style.css?ver=2.0.6.170420' type='text/css' media='all' />

	<script type="text/javascript">
		if (!!window.ActiveXObject || "ActiveXObject" in window) { //is IE?
			alert('请抛弃万恶的IE系列浏览器吧。');
		}
	</script>
</head>
<body class="blog logged-in hfeed">
<section id="main-container">
    <#if settings.head_focus!true>
		<div class="headertop ${settings.focus_img_filter!'filter-nothing'}">
			<#include "layouts/imgbox.ftl">
		</div>
	</#if>
	<div id="page" class="site wrapper">
		<header class="site-header" role="banner">
			<div class="site-top">
				<div class="site-branding">
					<#if options.blog_logo??>
						<div class="site-title">
							<a href="${context!}">
								<img src="${options.blog_logo!}">
							</a>
						</div>
					<#else>
						<h1 class="site-title"><a href="${context!}">${options.blog_title!}</a></h1>
					<!-- logo end -->
					</#if>
				</div><!-- .site-branding -->
				<?php header_user_menu();
				<#if settings.top_search!true>
				<div class="searchbox"><i class="iconfont js-toggle-search iconsearch">&#xe65c;</i></div>
				</#if>
				<div class="lower">
					<#if !settings.shownav!false>
						<div id="show-nav" class="showNav">
							<div class="line line1"></div>
							<div class="line line2"></div>
							<div class="line line3"></div>
						</div>
					</#if>
					<nav><?php wp_nav_menu(array('depth' => 2, 'theme_location' => 'primary', 'container' => false)); ?></nav>
					<!-- #site-navigation -->
				</div>
			</div>
		</header><!-- #masthead -->
		<?php the_headPattern(); ?>
		<div id="content" class="site-content">
</#macro>