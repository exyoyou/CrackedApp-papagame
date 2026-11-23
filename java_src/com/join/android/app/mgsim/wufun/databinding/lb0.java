package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class lb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f41259e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TabLayout f41260f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f41261g;

    private lb0(@NonNull ConstraintLayout rootView, @NonNull ImageView arrow, @NonNull TextView more, @NonNull View rankMore, @NonNull TabLayout tablayout, @NonNull ViewPager2 viewpager) {
        this.f41256b = rootView;
        this.f41257c = arrow;
        this.f41258d = more;
        this.f41259e = rankMore;
        this.f41260f = tablayout;
        this.f41261g = viewpager;
    }

    @NonNull
    public static lb0 bind(@NonNull View rootView) {
        int i10 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrow);
        if (imageView != null) {
            i10 = R.id.more;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.more);
            if (textView != null) {
                i10 = R.id.rank_more;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.rank_more);
                if (viewFindChildViewById != null) {
                    i10 = R.id.tablayout;
                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
                    if (tabLayout != null) {
                        i10 = R.id.viewpager;
                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                        if (viewPager2 != null) {
                            return new lb0((ConstraintLayout) rootView, imageView, textView, viewFindChildViewById, tabLayout, viewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41256b;
    }

    @NonNull
    public static lb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_papa_main_home_v4_rank, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
