<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "root/src/app_package/layout/simple_activity_layout.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/ui/SimpleScope.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${scopeClass}.java" />

    <instantiate from="root/src/app_package/ui/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="root/src/app_package/ui/SimpleView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${viewClass}.java" />

    <instantiate from="root/src/app_package/ui/SimpleComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${componentClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${componentClass}.java" />

<#if generateModule>
    <instantiate from="root/src/app_package/ui/SimpleModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${moduleClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${moduleClass}.java" />
</#if>


</recipe>
