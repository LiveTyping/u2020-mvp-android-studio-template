<recipe>

<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
</#if>

    <instantiate from="root/src/app_package/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

<#if (isNewProject!false) && !(excludeMenu!false)>
    <#include "../../../../../common/recipe_simple_menu.xml.ftl" />
</#if>

    <#include "../../../../../common/recipe_simple_dimens.xml" />
</recipe>