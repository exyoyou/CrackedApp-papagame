package me.relex.circleindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.Snackbar;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SnackbarBehavior extends CoordinatorLayout.Behavior<BaseCircleIndicator> {
    public SnackbarBehavior() {
    }

    private float h(CoordinatorLayout coordinatorLayout, BaseCircleIndicator baseCircleIndicator) {
        List<View> dependencies = coordinatorLayout.getDependencies(baseCircleIndicator);
        int size = dependencies.size();
        float fMin = 0.0f;
        for (int i10 = 0; i10 < size; i10++) {
            View view = dependencies.get(i10);
            if ((view instanceof Snackbar.SnackbarLayout) && coordinatorLayout.doViewsOverlap(baseCircleIndicator, view)) {
                fMin = Math.min(fMin, view.getTranslationY() - view.getHeight());
            }
        }
        return fMin;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BaseCircleIndicator baseCircleIndicator, @NonNull View view) {
        return view instanceof Snackbar.SnackbarLayout;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BaseCircleIndicator baseCircleIndicator, @NonNull View view) {
        baseCircleIndicator.setTranslationY(h(coordinatorLayout, baseCircleIndicator));
        return true;
    }

    public SnackbarBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
