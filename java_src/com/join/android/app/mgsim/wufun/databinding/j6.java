package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import me.relex.circleindicator.CircleIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class j6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CircleIndicator f40102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager f40104e;

    private j6(@NonNull RelativeLayout rootView, @NonNull CircleIndicator indicator, @NonNull RelativeLayout mainx, @NonNull ViewPager viewPager) {
        this.f40101b = rootView;
        this.f40102c = indicator;
        this.f40103d = mainx;
        this.f40104e = viewPager;
    }

    @NonNull
    public static j6 bind(@NonNull View rootView) {
        int i10 = R.id.indicator;
        CircleIndicator circleIndicator = (CircleIndicator) ViewBindings.findChildViewById(rootView, R.id.indicator);
        if (circleIndicator != null) {
            RelativeLayout relativeLayout = (RelativeLayout) rootView;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
            if (viewPager != null) {
                return new j6(relativeLayout, circleIndicator, relativeLayout, viewPager);
            }
            i10 = R.id.viewPager;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static j6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40101b;
    }

    @NonNull
    public static j6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.appdown_finish_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
