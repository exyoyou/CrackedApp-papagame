package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;
import com.join.mgps.customview.LoopViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class uf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CirclePageIndicator f45679c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45680d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LoopViewPager f45681e;

    private uf0(@NonNull RelativeLayout rootView, @NonNull CirclePageIndicator indecater, @NonNull LinearLayout pointGroup, @NonNull LoopViewPager topAdViewpager) {
        this.f45678b = rootView;
        this.f45679c = indecater;
        this.f45680d = pointGroup;
        this.f45681e = topAdViewpager;
    }

    @NonNull
    public static uf0 bind(@NonNull View rootView) {
        int i10 = R.id.indecater;
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(rootView, R.id.indecater);
        if (circlePageIndicator != null) {
            i10 = R.id.point_group;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.point_group);
            if (linearLayout != null) {
                i10 = R.id.top_ad_viewpager;
                LoopViewPager loopViewPager = (LoopViewPager) ViewBindings.findChildViewById(rootView, R.id.top_ad_viewpager);
                if (loopViewPager != null) {
                    return new uf0((RelativeLayout) rootView, circlePageIndicator, linearLayout, loopViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45678b;
    }

    @NonNull
    public static uf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_banner_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
