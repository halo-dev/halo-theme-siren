<#--
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Akina
 */
-->
<#include "header.ftl">
<@header title="${post.title!} - ${options.blog_title!}" keywords="${post.title!},${options.seo_keywords!},${tagWords!}" description="${post.summary!}">

</@header>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<#include "tpl/content-page.ftl">
		</main><!-- #main -->
	</div><!-- #primary -->
<#include "sidebar.ftl">
<#include "footer.ftl">
