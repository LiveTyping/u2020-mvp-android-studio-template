package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;

public class ${activityClass} extends BaseActivity implements HasComponent<${componentClass}>{

    @Inject Presenter presenter;

	private ${componentClass} component;

    @Override
    protected void onCreateComponent(${parentComponentClass} parentComponent) {
        component = Dagger${componentClass}.builder().
                ${parentComponentClass?uncap_first}(parentComponent).
<#if generateModule>
                ${moduleClass?uncap_first}(new ${moduleClass}()).
</#if>
				build();
        component.inject(this);
    }

    @Override
    protected void onDestroy() {
        component = null;
        super.onDestroy();
    }

    @Override
    protected int layoutId() {
        return R.layout.${layoutName};
    }

    @Override
    protected int viewId() {
        return R.id.${layoutName};
    }

    @Override
    protected BasePresenter<? extends BaseView> presenter() {
        return presenter;
    }

    @Override
    public ${componentClass} getComponent() {
        return component;
    }

    @${scopeClass}
    public static class Presenter extends BasePresenter<${viewClass}> {

        @Inject
        public Presenter() {
        }

        @Override
        protected void onLoad() {
            super.onLoad();
        }

        @Override
        protected void onDestroy() {
            super.onDestroy();
        }
    }

    public static class Screen extends NoParamsActivityScreen {
        @Override
        protected Class<? extends Activity> activityClass() {
            return ${activityClass}.class;
        }
    }    
}
