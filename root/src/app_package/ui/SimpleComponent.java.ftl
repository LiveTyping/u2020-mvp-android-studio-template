package ${packageName};

import dagger.Component;

@${scopeClass}
@Component( dependencies = ${parentComponentClass}.class <#if generateModule>, modules = ${moduleClass}.class </#if>)
public interface ${componentClass} extends ${viewClass}.Injector {
    void inject(${activityClass} activity);
}