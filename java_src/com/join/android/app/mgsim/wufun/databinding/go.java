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
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;

/* JADX INFO: loaded from: classes4.dex */
public final class go implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38930c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout1 f38931d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPagerCompat f38932e;

    private go(@NonNull LinearLayout rootView, @NonNull LinearLayout fragmentRanking, @NonNull SlidingTabLayout1 tabs, @NonNull ViewPagerCompat viewPager) {
        this.f38929b = rootView;
        this.f38930c = fragmentRanking;
        this.f38931d = tabs;
        this.f38932e = viewPager;
    }

    @NonNull
    public static go bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.tabs;
        SlidingTabLayout1 slidingTabLayout1 = (SlidingTabLayout1) ViewBindings.findChildViewById(rootView, R.id.tabs);
        if (slidingTabLayout1 != null) {
            i10 = R.id.view_pager;
            ViewPagerCompat viewPagerCompat = (ViewPagerCompat) ViewBindings.findChildViewById(rootView, R.id.view_pager);
            if (viewPagerCompat != null) {
                return new go(linearLayout, linearLayout, slidingTabLayout1, viewPagerCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static go inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38929b;
    }

    @NonNull
    public static go inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_rank_new, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
