<#include "./module/layout.ftl" />
<#include "./module/page-heading.ftl" />
<@layout title="${post.title!} - ${blog_title!}">
    <@page_heading title="${post.title!}" subtitle="">
        <div class="post-info mt-2">
            <div class="meta">
                <div class="info">
                    <i class="iconify w-3 h-3" data-icon="mdi:calendar-month-outline"></i>
                    <span class="date">${post.createTime?string("yyyy-MM-dd")}</span>
                    <i class="iconify w-3 h-3" data-icon="mdi:comment-outline"></i>
                    <a href="${post.fullPath!}#comment_widget">Comments</a>
                    <#if tags?size gt 0>
                        <i class="iconify w-3 h-3" data-icon="mdi:tag"></i>
                        <#list tags as tag>
                            <a href="${tag.fullPath!}" class="tag">&nbsp;${tag.name}</a>
                        </#list>
                    </#if>
                </div>
            </div>
        </div>
    </@page_heading>
    <div class="post-page">
        <div class="post animated fadeInDown">
            <div id="post-content" class="post-content markdown-body">
                ${post.formatContent!}
            </div>
        </div>
        <div class="pagination flex justify-between items-center">
            <#if prevPost??>
                <a class="btn" role="navigation" href="${prevPost.fullPath!}" title="${prevPost.title}">上一篇</a>
            </#if>
            <#if nextPost??>
                <a class="btn" role="navigation" href="${nextPost.fullPath!}" title="${nextPost.title}">
                    下一篇
                </a>
            </#if>
        </div>
        <div id="comment_widget" style="margin: 30px;">
            <#include "module/comment.ftl">
            <@comment post=post type="post" />
        </div>
    </div>
</@layout>