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
public final class wm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RecyclerView f46864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final NoScrollViewPager f46865d;

    private wm(@NonNull ConstraintLayout rootView, @NonNull RecyclerView subTabList, @NonNull NoScrollViewPager viewpager) {
        this.f46863b = rootView;
        this.f46864c = subTabList;
        this.f46865d = viewpager;
    }

    @NonNull
    public static wm bind(@NonNull View rootView) {
        int i10 = R.id.subTabList;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.subTabList);
        if (recyclerView != null) {
            i10 = R.id.viewpager;
            NoScrollViewPager noScrollViewPager = (NoScrollViewPager) ViewBindings.findChildViewById(rootView, R.id.viewpager);
            if (noScrollViewPager != null) {
                return new wm((ConstraintLayout) rootView, recyclerView, noScrollViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46863b;
    }

    @NonNull
    public static wm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_mod_game_cloud_viewpager, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
