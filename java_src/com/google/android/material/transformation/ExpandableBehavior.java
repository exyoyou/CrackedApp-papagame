package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.List;
import y4.b;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f32443c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f32444d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f32445e = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32446b;

    class a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f32447b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f32448c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ b f32449d;

        a(View view, int i10, b bVar) {
            this.f32447b = view;
            this.f32448c = i10;
            this.f32449d = bVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f32447b.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f32446b == this.f32448c) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                b bVar = this.f32449d;
                expandableBehavior.l((View) bVar, this.f32447b, bVar.b(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f32446b = 0;
    }

    private boolean i(boolean z10) {
        if (!z10) {
            return this.f32446b == 1;
        }
        int i10 = this.f32446b;
        return i10 == 0 || i10 == 2;
    }

    @Nullable
    public static <T extends ExpandableBehavior> T k(@NonNull View view, @NonNull Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof ExpandableBehavior) {
            return cls.cast(behavior);
        }
        throw new IllegalArgumentException("The view is not associated with ExpandableBehavior");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    protected b j(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = dependencies.get(i10);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (b) view2;
            }
        }
        return null;
    }

    protected abstract boolean l(View view, View view2, boolean z10, boolean z11);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        b bVar = (b) view2;
        if (!i(bVar.b())) {
            return false;
        }
        this.f32446b = bVar.b() ? 1 : 2;
        return l((View) bVar, view, bVar.b(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
        b bVarJ;
        if (ViewCompat.isLaidOut(view) || (bVarJ = j(coordinatorLayout, view)) == null || !i(bVarJ.b())) {
            return false;
        }
        int i11 = bVarJ.b() ? 1 : 2;
        this.f32446b = i11;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, i11, bVarJ));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32446b = 0;
    }
}
