package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ck implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f36965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TabLayout f36966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewPager f36967f;

    private ck(@NonNull ConstraintLayout rootView, @NonNull ImageView search, @NonNull View statubar, @NonNull TabLayout tablayout, @NonNull ViewPager viewPager) {
        this.f36963b = rootView;
        this.f36964c = search;
        this.f36965d = statubar;
        this.f36966e = tablayout;
        this.f36967f = viewPager;
    }

    @NonNull
    public static ck bind(@NonNull View rootView) {
        int i10 = R.id.search;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search);
        if (imageView != null) {
            i10 = R.id.statubar;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
            if (viewFindChildViewById != null) {
                i10 = R.id.tablayout;
                TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
                if (tabLayout != null) {
                    i10 = R.id.viewPager;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                    if (viewPager != null) {
                        return new ck((ConstraintLayout) rootView, imageView, viewFindChildViewById, tabLayout, viewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ck inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36963b;
    }

    @NonNull
    public static ck inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.findgame_fragment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
