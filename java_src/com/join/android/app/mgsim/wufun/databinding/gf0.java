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
import com.join.mgps.customview.MGViewpagerV4;
import com.join.mgps.customview.SlidingTabDetailLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class gf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingTabDetailLayout f38832c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MGViewpagerV4 f38833d;

    private gf0(@NonNull LinearLayout rootView, @NonNull SlidingTabDetailLayout slidingTabLayout, @NonNull MGViewpagerV4 viewpagerV4) {
        this.f38831b = rootView;
        this.f38832c = slidingTabLayout;
        this.f38833d = viewpagerV4;
    }

    @NonNull
    public static gf0 bind(@NonNull View rootView) {
        int i10 = R.id.slidingTabLayout;
        SlidingTabDetailLayout slidingTabDetailLayout = (SlidingTabDetailLayout) ViewBindings.findChildViewById(rootView, R.id.slidingTabLayout);
        if (slidingTabDetailLayout != null) {
            i10 = R.id.viewpagerV4;
            MGViewpagerV4 mGViewpagerV4 = (MGViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.viewpagerV4);
            if (mGViewpagerV4 != null) {
                return new gf0((LinearLayout) rootView, slidingTabDetailLayout, mGViewpagerV4);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38831b;
    }

    @NonNull
    public static gf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_detail_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
