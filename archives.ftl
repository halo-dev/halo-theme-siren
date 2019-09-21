<#---
/**
 * The template for displaying archive pages.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Akina
 */
-->
<#include "header.ftl">
<@header title="文章归档 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" />

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

			<@postTag method="archiveMonth">
				<#if archives?? && archives?size gt 0>

			<?php if(akina_option('patternimg') || !z_taxonomy_image_url()) { ?>
			<header class="page-header">
				<h1 class="cat-title"><?php single_cat_title('', true); ?></h1>
			<span class="cat-des">
			<?php 
				if(category_description() != ""){ 
					echo "" . category_description(); 
				} 
			?>
			</span>
			</header><!-- .page-header -->
			<?php } // page-header ?>

			<?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();
			<#list archives as archive>
				<#list archive.posts as post>
					<#include "tpl/content.ftl">
				</#list>
			</#list>
			<div class="clearer"></div>

		<#else>

			<#include "tpl/content-none.ftl">

		</#if>
			</@postTag>

		</main><!-- #main -->
		<?php if ( akina_option('pagenav_style') == 'ajax') { ?>
		<div id="pagination" <?php if(akina_option('image_category') && is_category(explode(',',akina_option('image_category')))) echo 'class="pagination-archive"'; ?>><?php next_posts_link(__('Previous')); ?></div>
		<?php }else{ ?>
		<nav class="navigator">
        <?php previous_posts_link('<i class="iconfont">&#xe679;</i>') ?><?php next_posts_link('<i class="iconfont">&#xe6a3;</i>') ?>
		</nav>
		<?php } ?>
	</div><!-- #primary -->

<?php
get_sidebar();
get_footer();
