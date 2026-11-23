package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.photoviewer.HackyViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class rv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f44497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CirclePageIndicator f44499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final HackyViewPager f44500e;

    private rv(@NonNull FrameLayout rootView, @NonNull TextView bottomLayout, @NonNull CirclePageIndicator indicator, @NonNull HackyViewPager pager) {
        this.f44497b = rootView;
        this.f44498c = bottomLayout;
        this.f44499d = indicator;
        this.f44500e = pager;
    }

    @NonNull
    public static rv bind(@NonNull View rootView) {
        int i10 = R.id.bottomLayout;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.bottomLayout);
        if (textView != null) {
            i10 = R.id.indicator;
            CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(rootView, R.id.indicator);
            if (circlePageIndicator != null) {
                i10 = R.id.pager;
                HackyViewPager hackyViewPager = (HackyViewPager) ViewBindings.findChildViewById(rootView, R.id.pager);
                if (hackyViewPager != null) {
                    return new rv((FrameLayout) rootView, textView, circlePageIndicator, hackyViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f44497b;
    }

    @NonNull
    public static rv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.image_viewpager, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
