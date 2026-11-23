package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;

/* JADX INFO: loaded from: classes4.dex */
public final class f5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CoordinatorLayout f38262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f38263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f38264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FloatingActionButton f38265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f38266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f38267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SwipeRefresh f38268h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38269i;

    private f5(@NonNull CoordinatorLayout rootView, @NonNull AppBarLayout appbar, @NonNull CollapsingToolbarLayout colltoobar, @NonNull FloatingActionButton fab, @NonNull CoordinatorLayout mainContent, @NonNull XRecyclerView recyclerView, @NonNull SwipeRefresh refreshx, @NonNull ImageView topImag) {
        this.f38262b = rootView;
        this.f38263c = appbar;
        this.f38264d = colltoobar;
        this.f38265e = fab;
        this.f38266f = mainContent;
        this.f38267g = recyclerView;
        this.f38268h = refreshx;
        this.f38269i = topImag;
    }

    @NonNull
    public static f5 bind(@NonNull View rootView) {
        int i10 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
        if (appBarLayout != null) {
            i10 = R.id.colltoobar;
            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(rootView, R.id.colltoobar);
            if (collapsingToolbarLayout != null) {
                i10 = R.id.fab;
                FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(rootView, R.id.fab);
                if (floatingActionButton != null) {
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) rootView;
                    i10 = R.id.recyclerView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                    if (xRecyclerView != null) {
                        i10 = R.id.refreshx;
                        SwipeRefresh swipeRefresh = (SwipeRefresh) ViewBindings.findChildViewById(rootView, R.id.refreshx);
                        if (swipeRefresh != null) {
                            i10 = R.id.topImag;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.topImag);
                            if (imageView != null) {
                                return new f5(coordinatorLayout, appBarLayout, collapsingToolbarLayout, floatingActionButton, coordinatorLayout, xRecyclerView, swipeRefresh, imageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static f5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CoordinatorLayout getRoot() {
        return this.f38262b;
    }

    @NonNull
    public static f5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_test_scrool_acitivity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
