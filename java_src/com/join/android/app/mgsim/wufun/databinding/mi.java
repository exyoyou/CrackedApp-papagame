package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ViewPagerSlide;

/* JADX INFO: loaded from: classes4.dex */
public final class mi implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f41903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f41904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f41905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f41906f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41907g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout f41908h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Toolbar f41909i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41910j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f41911k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ViewPagerSlide f41912l;

    private mi(@NonNull RelativeLayout rootView, @NonNull AppBarLayout appbar, @NonNull NestedScrollView bottomNull, @NonNull CollapsingToolbarLayout colltoobar, @NonNull CoordinatorLayout mPtrFrame, @NonNull TextView nulltext, @NonNull SlidingTabLayout tableLayout, @NonNull Toolbar toolbar, @NonNull TextView topBack, @NonNull ImageView topImag, @NonNull ViewPagerSlide viewpager) {
        this.f41902b = rootView;
        this.f41903c = appbar;
        this.f41904d = bottomNull;
        this.f41905e = colltoobar;
        this.f41906f = mPtrFrame;
        this.f41907g = nulltext;
        this.f41908h = tableLayout;
        this.f41909i = toolbar;
        this.f41910j = topBack;
        this.f41911k = topImag;
        this.f41912l = viewpager;
    }

    @NonNull
    public static mi bind(@NonNull View rootView) {
        int i10 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
        if (appBarLayout != null) {
            i10 = R.id.bottomNull;
            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, R.id.bottomNull);
            if (nestedScrollView != null) {
                i10 = R.id.colltoobar;
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(rootView, R.id.colltoobar);
                if (collapsingToolbarLayout != null) {
                    i10 = R.id.mPtrFrame;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                    if (coordinatorLayout != null) {
                        i10 = R.id.nulltext;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.nulltext);
                        if (textView != null) {
                            i10 = R.id.tableLayout;
                            SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(rootView, R.id.tableLayout);
                            if (slidingTabLayout != null) {
                                i10 = R.id.toolbar;
                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(rootView, R.id.toolbar);
                                if (toolbar != null) {
                                    i10 = R.id.topBack;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.topBack);
                                    if (textView2 != null) {
                                        i10 = R.id.topImag;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.topImag);
                                        if (imageView != null) {
                                            i10 = R.id.viewpager;
                                            ViewPagerSlide viewPagerSlide = (ViewPagerSlide) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                                            if (viewPagerSlide != null) {
                                                return new mi((RelativeLayout) rootView, appBarLayout, nestedScrollView, collapsingToolbarLayout, coordinatorLayout, textView, slidingTabLayout, toolbar, textView2, imageView, viewPagerSlide);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41902b;
    }

    @NonNull
    public static mi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.discovery_fragment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
