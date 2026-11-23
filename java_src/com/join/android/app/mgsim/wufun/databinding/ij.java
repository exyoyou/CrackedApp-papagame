package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ij implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TabLayout f39840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f39841d;

    private ij(@NonNull LinearLayout rootView, @NonNull TabLayout tablayout, @NonNull ViewPager2 viewPager) {
        this.f39839b = rootView;
        this.f39840c = tablayout;
        this.f39841d = viewPager;
    }

    @NonNull
    public static ij bind(@NonNull View rootView) {
        int i10 = R.id.tablayout;
        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
        if (tabLayout != null) {
            i10 = R.id.viewPager;
            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewPager);
            if (viewPager2 != null) {
                return new ij((LinearLayout) rootView, tabLayout, viewPager2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ij inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39839b;
    }

    @NonNull
    public static ij inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.everyday_new_game_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
