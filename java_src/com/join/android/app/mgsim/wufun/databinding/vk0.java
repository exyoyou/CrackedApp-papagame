package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;
import com.join.mgps.customview.LoopViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class vk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CirclePageIndicator f46323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46326f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46327g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LoopViewPager f46328h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46329i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ViewFlipper f46330j;

    private vk0(@NonNull LinearLayout rootView, @NonNull CirclePageIndicator indecater, @NonNull FrameLayout onlyOne, @NonNull LinearLayout pointGroup, @NonNull LinearLayout table1, @NonNull LinearLayout table2, @NonNull LoopViewPager topAdViewpager, @NonNull ConstraintLayout topAdViewpagerOuter, @NonNull ViewFlipper topLineView) {
        this.f46322b = rootView;
        this.f46323c = indecater;
        this.f46324d = onlyOne;
        this.f46325e = pointGroup;
        this.f46326f = table1;
        this.f46327g = table2;
        this.f46328h = topAdViewpager;
        this.f46329i = topAdViewpagerOuter;
        this.f46330j = topLineView;
    }

    @NonNull
    public static vk0 bind(@NonNull View rootView) {
        int i10 = R.id.indecater;
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(rootView, R.id.indecater);
        if (circlePageIndicator != null) {
            i10 = R.id.onlyOne;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.onlyOne);
            if (frameLayout != null) {
                i10 = R.id.point_group;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.point_group);
                if (linearLayout != null) {
                    i10 = R.id.table1;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.table1);
                    if (linearLayout2 != null) {
                        i10 = R.id.table2;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.table2);
                        if (linearLayout3 != null) {
                            i10 = R.id.top_ad_viewpager;
                            LoopViewPager loopViewPager = (LoopViewPager) ViewBindings.findChildViewById(rootView, R.id.top_ad_viewpager);
                            if (loopViewPager != null) {
                                i10 = R.id.top_ad_viewpager_outer;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.top_ad_viewpager_outer);
                                if (constraintLayout != null) {
                                    i10 = R.id.topLineView;
                                    ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(rootView, R.id.topLineView);
                                    if (viewFlipper != null) {
                                        return new vk0((LinearLayout) rootView, circlePageIndicator, frameLayout, linearLayout, linearLayout2, linearLayout3, loopViewPager, constraintLayout, viewFlipper);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46322b;
    }

    @NonNull
    public static vk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_papa_title_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
