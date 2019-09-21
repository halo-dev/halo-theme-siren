<#--

/**
 Template Name: links
 */
-->
<#include "header.ftl">
<@header title="友情链接 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
	<div class="blank"></div>
</@header>
	<#if settings.patternimg!true || !(post.thumbnail?? || post.thumbnail!='')>
	    <span class="linkss-title">友情链接</span>
	</#if>
    <article <?php post_class("post-item"); ?>
        <div class="links">
            <ul class="link-items fontSmooth">
                <@linkTag method="list">
                    <#list links as link>
                        <li class="link-item">
                            <a class="link-item-inner effect-apollo" href="${link.url!}" title="${link.name!}" target="_blank">
                                <span class="sitename">${link.name!}</span>
                                <div class="linkdes">${link.description!}</div>
                            </a>
                        </li>
                    </#list>
                </@linkTag>
            </ul>
        </div>
    </article>
<#include "footer.ftl">