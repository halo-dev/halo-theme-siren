<#--
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Akina
 */
-->
<#include "header.ftl">
<@header title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />


<#if settings.head_notice!false && settings.notice_title!=''>
	<div class="notice">
		<i class="iconfont">&#xe66b;</i>
		<div class="notice-content">${settings.notice_title!}</div>
	</div>
</#if>

<#if settings.top_feature!true>
	<#include "layouts/feature.ftl">
</#if>

<div id="primary" class="content-area">
	<main id="main" class="site-main" role="main">
		<h1 class="main-title">Posts</h1>
		<#if posts?? && posts.getTotalElements() gt 0>
			<#if is_index?? && !is_sheet??>
				<header>
					<h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
				</header>
			</#if>
			<#--Start the Loop-->
			<#if (settings.post_list_style!'standard') == 'standard'>
				<#list posts.content as post>
					<#include "tpl/content.ftl">
				</#list>
			<#else>
				<#include "tpl/content-thumb.ftl">
			</#if>
		<#else>
			<#include "tpl/content-none.ftl">
		</#if>
	</main><!-- #main -->
	<?php if (akina_option('pagenav_style') == 'ajax') { ?>
	<div id="pagination"><?php next_posts_link('Previous'); ?></div>
	<?php } else { ?>
	<nav class="navigator">
		<?php previous_posts_link('<i class="iconfont">&#xe679;</i>') ?><?php next_posts_link('<i class="iconfont">&#xe6a3;</i>') ?>
	</nav>
	<?php } ?>
</div><!-- #primary -->

<#include "footer.ftl">