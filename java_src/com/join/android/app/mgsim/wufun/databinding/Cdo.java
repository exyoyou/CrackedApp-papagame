package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ViewPagerCompat;

/* JADX INFO: renamed from: com.join.android.app.mgsim.wufun.databinding.do, reason: invalid class name */
/* JADX INFO: loaded from: classes4.dex */
public final class Cdo implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TabLayout f37555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPagerCompat f37556e;

    private Cdo(@NonNull LinearLayout rootView, @NonNull LinearLayout fragmentRanking, @NonNull TabLayout tablayout, @NonNull ViewPagerCompat viewPager) {
        this.f37553b = rootView;
        this.f37554c = fragmentRanking;
        this.f37555d = tablayout;
        this.f37556e = viewPager;
    }

    @NonNull
    public static Cdo bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.tablayout;
        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
        if (tabLayout != null) {
            i10 = R.id.viewPager;
            ViewPagerCompat viewPagerCompat = (ViewPagerCompat) ViewBindings.findChildViewById(rootView, R.id.viewPager);
            if (viewPagerCompat != null) {
                return new Cdo(linearLayout, linearLayout, tabLayout, viewPagerCompat);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static Cdo inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37553b;
    }

    @NonNull
    public static Cdo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_rank, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
