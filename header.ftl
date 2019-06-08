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
<body <?php body_class(); ?>>
<section id="main-container">
	<?php
    if (!akina_option('head_focus')) {
        $filter = akina_option('focus_img_filter');
        ?>
	<div class="headertop <?php echo $filter; ?>">
		<?php get_template_part('layouts/imgbox'); ?>
	</div>
	<?php } ?>
	<div id="page" class="site wrapper">
		<header class="site-header" role="banner">
			<div class="site-top">
				<div class="site-branding">
					<?php if (akina_option('akina_logo')){ ?>
					<div class="site-title"><a href="<?php bloginfo('url'); ?>"><img
									src="<?php echo akina_option('akina_logo'); ?>"></a></div>
					<?php }else{ ?>
					<h1 class="site-title"><a href="<?php bloginfo('url'); ?>"><?php bloginfo('name'); ?></a></h1>
					<?php } ?><!-- logo end -->
				</div><!-- .site-branding -->
				<?php header_user_menu();
                if (akina_option('top_search') == 'yes') { ?>
				<div class="searchbox"><i class="iconfont js-toggle-search iconsearch">&#xe65c;</i></div>
				<?php } ?>
				<div class="lower"><?php if (!akina_option('shownav')) { ?>
					<div id="show-nav" class="showNav">
						<div class="line line1"></div>
						<div class="line line2"></div>
						<div class="line line3"></div>
					</div><?php } ?>
					<nav><?php wp_nav_menu(array('depth' => 2, 'theme_location' => 'primary', 'container' => false)); ?></nav>
					<!-- #site-navigation -->
				</div>
			</div>
		</header><!-- #masthead -->
		<?php the_headPattern(); ?>
		<div id="content" class="site-content">
</#macro>