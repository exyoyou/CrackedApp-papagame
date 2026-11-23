package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.RecyclerviewViewpager;
import com.join.mgps.customview.SlidingTabLayout6;

/* JADX INFO: loaded from: classes4.dex */
public final class lv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout6 f41582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerviewViewpager f41583f;

    private lv(@NonNull ConstraintLayout rootView, @NonNull LinearLayout moreLayout, @NonNull ConstraintLayout root, @NonNull SlidingTabLayout6 tabLayout, @NonNull RecyclerviewViewpager viewPager) {
        this.f41579b = rootView;
        this.f41580c = moreLayout;
        this.f41581d = root;
        this.f41582e = tabLayout;
        this.f41583f = viewPager;
    }

    @NonNull
    public static lv bind(@NonNull View rootView) {
        int i10 = R.id.moreLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreLayout);
        if (linearLayout != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
            i10 = R.id.tabLayout;
            SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(rootView, R.id.tabLayout);
            if (slidingTabLayout6 != null) {
                i10 = R.id.viewPager;
                RecyclerviewViewpager recyclerviewViewpager = (RecyclerviewViewpager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                if (recyclerviewViewpager != null) {
                    return new lv(constraintLayout, linearLayout, constraintLayout, slidingTabLayout6, recyclerviewViewpager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41579b;
    }

    @NonNull
    public static lv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.home_rank_layout_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
