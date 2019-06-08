<#--
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Akina
 */
-->
<#import "/common/macro/common_macro.ftl" as common>

</div><!-- #content -->
<?php
if (akina_option('general_disqus_plugin_support')) {
    get_template_part('layouts/duoshuo');
} else {
    comments_template('', true);
}
?>
</div><!-- #page Pjax container-->
<footer id="colophon" class="site-footer" role="contentinfo">
	<div class="site-info">
		<div class="footertext">
			<p class="foo-logo"
			   style="background-image: url('${static!}/images/f-logo.png');"></p>
			<p><?php echo akina_option('footer_info', ''); ?></p>
		</div>
		<div class="footer-device">
			<?php
            $statistics_link = akina_option('site_statistics_link') ? '<a href="' . akina_option('site_statistics_link') . '" target="_blank" rel="nofollow">Statistics</a>' : '';
			$site_map_link = akina_option('site_map_link') ? '<a href="' . akina_option('site_map_link') . '" target="_blank" rel="nofollow">Sitemap</a>' : '';
			printf(esc_html__('%1$s &nbsp; %2$s &nbsp; %3$s &nbsp; %4$s', 'akina'), $site_map_link, '<a href="http://www.akina.pw/themeakina" rel="designer" target="_blank" rel="nofollow">Theme</a>', '<a href="https://wordpress.org/" target="_blank" rel="nofollow">WordPress</a>', $statistics_link);
			?>
		</div>
	</div><!-- .site-info -->
</footer><!-- #colophon -->
<div class="openNav">
	<div class="iconflat">
		<div class="icon"></div>
	</div>
	<div class="site-branding">
		<#if options.blog_logo??>
			<div class="site-title">
				<a href="${context!}">
					<img src="${options.blog_logo!}">
				</a>
			</div>
		<#else>
			<h1 class="site-title"><a href="${context!}">${options.blog_title!}</a></h1>
		</#if>
	</div>
</div><!-- m-nav-bar -->
</section><!-- #section -->
<!-- m-nav-center -->
<div id="mo-nav">
	<div class="m-avatar">
		<#if user.avatar??>
			<img src="${user.avatar!}">
		<#else>
			<img src="${static!}/images/avatar.jpg">
		</#if>
	</div>
	<div class="m-search">
		<form class="m-search-form" method="get" action="/search" role="search">
			<input class="m-search-input" type="search" name="keyword" placeholder="搜索..." required>
		</form>
	</div>
	<?php wp_nav_menu(array('depth' => 2, 'theme_location' => 'primary', 'container' => false)); ?>
</div><!-- m-nav-center end -->
<a href="#" class="cd-top"></a>
<!-- search start -->
<form class="js-search search-form search-form--modal" method="get" action="/search" role="search">
	<div class="search-form__inner">
		<div>
			<p class="micro mb-">输入后按回车搜索 ...</p>
			<i class="iconfont">&#xe65c;</i>
			<input class="text-input" type="search" name="keyword" placeholder="Search" required>
		</div>
	</div>
	<div class="search_close"></div>
</form>
<!-- search end -->
<#--<?php wp_footer(); ?>-->

<script type='text/javascript' src='${static!}/js/jquery.min.js?ver=2.0.6.170420'></script>
<script type='text/javascript' src='${static!}/js/jquery.pjax.js?ver=2.0.6.170420'></script>
<script type='text/javascript' src='${static!}/js/input.min.js?ver=2.0.6.170420'></script>
<script type='text/javascript'>
	/* <![CDATA[ */
	var Poi = {"pjax":"","movies":"close","windowheight":"auto","codelamp":"close","ajaxurl":"http:\/\/192.168.100.6:8091\/wp-admin\/admin-ajax.php","order":"asc","formpostion":"bottom"};
	/* ]]> */
</script>
<script type='text/javascript' src='${static!}/js/app.js?ver=2.0.6.170420'></script>

<div class="site-statistics">
	<@common.statistics />
</div>
</body>
</html>