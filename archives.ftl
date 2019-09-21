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
<article class="post-item page type-page status-publish hentry">
    <div id="archives-temp">
        <#if settings.patternimg!true>
        <h2>文章归档</h2>
        </#if>
        <div id="archives-content">
            <@postTag method="archiveMonth">
                <#list archives as archive>
                    <div class="archive-title" id="arti-${archive.year?c}-${archive.month!}">
                        <span class="ar-time"><i class="iconfont">&#xe74a;</i></span>
                        <h3>${archive.year?c}-${archive.month!}</h3>
                        <div class="archives archives-${archive_index}" id="monlist" data-date="${archive.year?c}-${archive.month!}" style="display: block; overflow: hidden;">
                            <#list archive.posts as post>
                                <span class="ar-circle"></span>
                                <div class="arrow-left-ar"></div>
                                <div class="brick">
                                    <a href="${context!}/archives/${post.url!}">
                                        <span class="time"><i class="iconfont">&#xe65f;</i>${post.createTime?string('MM-dd')}</span>${post.title!}
                                    </a>
                                </div>
                            </#list>
                        </div>
                    </div>
                </#list>
            </@postTag>
        </div>
    </div>
</article>
<#include "sidebar.ftl">
<#include "footer.ftl">