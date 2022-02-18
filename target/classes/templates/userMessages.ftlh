<#import "parts/common.ftlh" as c>

<@c.page>

    <#if isCurrentUser>
        <#include "parts/messageEditor.ftlh" />
    </#if>

    <#include "parts/messageList.ftlh" />

</@c.page>