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
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.customview.SlidingTabMyPaPaLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class dr0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MViewpagerV4 f37603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SlidingTabMyPaPaLayout f37604e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f37605f;

    private dr0(@NonNull RelativeLayout rootView, @NonNull LinearLayout linearLayout, @NonNull MViewpagerV4 mBottomVIewPager, @NonNull SlidingTabMyPaPaLayout slidingTabLayout, @NonNull View viewBg) {
        this.f37601b = rootView;
        this.f37602c = linearLayout;
        this.f37603d = mBottomVIewPager;
        this.f37604e = slidingTabLayout;
        this.f37605f = viewBg;
    }

    @NonNull
    public static dr0 bind(@NonNull View rootView) {
        int i10 = R.id.linearLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
        if (linearLayout != null) {
            i10 = R.id.mBottomVIewPager;
            MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(rootView, R.id.mBottomVIewPager);
            if (mViewpagerV4 != null) {
                i10 = R.id.slidingTabLayout;
                SlidingTabMyPaPaLayout slidingTabMyPaPaLayout = (SlidingTabMyPaPaLayout) ViewBindings.findChildViewById(rootView, R.id.slidingTabLayout);
                if (slidingTabMyPaPaLayout != null) {
                    i10 = R.id.viewBg;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.viewBg);
                    if (viewFindChildViewById != null) {
                        return new dr0((RelativeLayout) rootView, linearLayout, mViewpagerV4, slidingTabMyPaPaLayout, viewFindChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dr0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37601b;
    }

    @NonNull
    public static dr0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.plat_classify_fragment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
