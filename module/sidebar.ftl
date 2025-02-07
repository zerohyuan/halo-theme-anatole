<div class="sidebar animated fadeInDown">
    <div class="logo-title">
        <div class="title">
            <img src="${options.blog_logo!'${static!}/source/images/logo@2x.jpg'}" style="width:127px;<#if settings.avatar_circle!false>border-radius:50%</#if>" />
            <h3 title="">
                <a href="${context!}">${options.blog_title!'Anatole'}</a>
            </h3>
            <div class="description">
                <#if settings.hitokoto!false>
                    <p id="yiyan">获取中...</p>
                <#else >
                    <p>${user.description!'A other Halo theme'}</p>
                </#if>
            </div>
        </div>
    </div>
    <#include "social-list.ftl">
    <div class="footer">
        <a target="_blank" href="#">
            <#-- 不允许修改该主题信息，也不能删除。 -->
            <span>Designed by </span>
            <a href="https://www.caicai.me">CaiCai</a>
            <a href="https://github.com/halo-dev/halo" target="_blank">- Proudly published with Halo&#65281;</a>
            <div class="footer_text">
                <@common.footer_info />
            </div>
        </a>
    </div>
</div>
