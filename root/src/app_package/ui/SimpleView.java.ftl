package ${packageName};

public class ${viewClass} extends FrameLayout implements BaseView {

    @Inject ${activityClass}.Presenter presenter;

    public ${viewClass}(Context context, AttributeSet attrs) {
        super(context, attrs);
        ${componentClass} component = ComponentFinder.findActivityComponent(context);
        component.inject(this);
    }

	@Override
    public void showLoading() {
    }

    @Override
    public void showContent() {
    }

    @Override
    public void showError(Throwable throwable) {
    }

    @Override
    public void showEmpty() {
    }

    public interface Injector {
        void inject(${viewClass} view);
    }
}