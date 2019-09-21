<#--
/**
 * The template for displaying search results pages.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package Akina
 */
-->
<#include "header.ftl">
<@header title="${keyword!} - 搜索结果 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
	<div class="blank"></div>
</@header>

<section id="primary" class="content-area">
	<main id="main" class="site-main" role="main">
		<#if posts?? && posts.content?size gt 0>
			<#if settings.patternimg!true || !(post.thumbnail?? || post.thumbnail!='')>
			<header class="page-header">
				<h1 class="page-title">搜索结果: <span>${keyword!}</span></h1>
			</header><!-- .page-header -->
			</#if>
			<#list posts.content as post>
				<#include "tpl/content.ftl">
			</#list>
			the_posts_navigation();
        <#else>
			<div class="search-box">
				<!-- search start -->
				<form class="s-search">
					<i class="iconfont">&#xe65c;</i>
					<input class="text-input" type="search" name="s" placeholder="Search..." required>
				</form>
				<!-- search end -->
			</div>
			<#include "tpl/content-none.ftl">
        </#if>
	</main><!-- #main -->
</section><!-- #primary -->
<#include "footer.ftl">
