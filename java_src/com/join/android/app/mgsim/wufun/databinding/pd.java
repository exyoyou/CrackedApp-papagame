package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabLayoutGameDetail;

/* JADX INFO: loaded from: classes4.dex */
public final class pd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayoutGameDetail f43317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f43318d;

    private pd(@NonNull LinearLayout rootView, @NonNull SlidingTabLayoutGameDetail tabLayout, @NonNull MViewpagerV4 viewPager) {
        this.f43316b = rootView;
        this.f43317c = tabLayout;
        this.f43318d = viewPager;
    }

    @NonNull
    public static pd bind(@NonNull View rootView) {
        int i10 = R.id.tabLayout;
        SlidingTabLayoutGameDetail slidingTabLayoutGameDetail = (SlidingTabLayoutGameDetail) ViewBindings.findChildViewById(rootView, R.id.tabLayout);
        if (slidingTabLayoutGameDetail != null) {
            i10 = R.id.viewPager;
            MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.viewPager);
            if (mViewpagerV4 != null) {
                return new pd((LinearLayout) rootView, slidingTabLayoutGameDetail, mViewpagerV4);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43316b;
    }

    @NonNull
    public static pd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_one_touch_skill_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
