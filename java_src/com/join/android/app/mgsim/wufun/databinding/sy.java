package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NestedScrollableHost;

/* JADX INFO: loaded from: classes4.dex */
public final class sy implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final NestedScrollableHost f45044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TabLayout f45045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f45047f;

    private sy(@NonNull ConstraintLayout rootView, @NonNull NestedScrollableHost nshView, @NonNull TabLayout tablayout, @NonNull TextView tvText1, @NonNull ViewPager2 viewpager) {
        this.f45043b = rootView;
        this.f45044c = nshView;
        this.f45045d = tablayout;
        this.f45046e = tvText1;
        this.f45047f = viewpager;
    }

    @NonNull
    public static sy bind(@NonNull View rootView) {
        int i10 = R.id.nsh_view;
        NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) ViewBindings.findChildViewById(rootView, R.id.nsh_view);
        if (nestedScrollableHost != null) {
            i10 = R.id.tablayout;
            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
            if (tabLayout != null) {
                i10 = R.id.tv_text_1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                if (textView != null) {
                    i10 = R.id.viewpager;
                    ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                    if (viewPager2 != null) {
                        return new sy((ConstraintLayout) rootView, nestedScrollableHost, tabLayout, textView, viewPager2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sy inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45043b;
    }

    @NonNull
    public static sy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_daily_find_day_rank, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
