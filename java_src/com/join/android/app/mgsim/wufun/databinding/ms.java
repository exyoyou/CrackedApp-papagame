package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CarouselViewPager2;
import com.join.mgps.customview.CirclePageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class ms implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CirclePageIndicator f42026c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42027d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CarouselViewPager2 f42029f;

    private ms(@NonNull RelativeLayout rootView, @NonNull CirclePageIndicator indecater, @NonNull FrameLayout onlyOne, @NonNull LinearLayout pointGroup, @NonNull CarouselViewPager2 topAdViewpager) {
        this.f42025b = rootView;
        this.f42026c = indecater;
        this.f42027d = onlyOne;
        this.f42028e = pointGroup;
        this.f42029f = topAdViewpager;
    }

    @NonNull
    public static ms bind(@NonNull View rootView) {
        int i10 = R.id.indecater;
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(rootView, R.id.indecater);
        if (circlePageIndicator != null) {
            i10 = R.id.onlyOne;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.onlyOne);
            if (frameLayout != null) {
                i10 = R.id.point_group;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.point_group);
                if (linearLayout != null) {
                    i10 = R.id.top_ad_viewpager;
                    CarouselViewPager2 carouselViewPager2 = (CarouselViewPager2) ViewBindings.findChildViewById(rootView, R.id.top_ad_viewpager);
                    if (carouselViewPager2 != null) {
                        return new ms((RelativeLayout) rootView, circlePageIndicator, frameLayout, linearLayout, carouselViewPager2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ms inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42025b;
    }

    @NonNull
    public static ms inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_ad_group_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
