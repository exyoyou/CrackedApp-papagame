package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NoScrollViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class hm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RecyclerView f39391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final NoScrollViewPager f39392d;

    private hm(@NonNull ConstraintLayout rootView, @NonNull RecyclerView subTabList, @NonNull NoScrollViewPager viewpager) {
        this.f39390b = rootView;
        this.f39391c = subTabList;
        this.f39392d = viewpager;
    }

    @NonNull
    public static hm bind(@NonNull View rootView) {
        int i10 = R.id.subTabList;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.subTabList);
        if (recyclerView != null) {
            i10 = R.id.viewpager;
            NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(rootView, R.id.viewpager);
            if (noScrollViewPager != null) {
                return new hm((ConstraintLayout) rootView, recyclerView, noScrollViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39390b;
    }

    @NonNull
    public static hm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_game_detail_mod_cloud_viewpager, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
