package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class m90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f41788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FlowLayout f41791e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41792f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41793g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41794h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41795i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41796j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41797k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41798l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41799m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41800n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f41801o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f41802p;

    private m90(@NonNull FrameLayout rootView, @NonNull ConstraintLayout clLeft, @NonNull LinearLayout clRight, @NonNull FlowLayout flTags, @NonNull LinearLayout llExit, @NonNull LinearLayout llFeedback, @NonNull LinearLayout llSettings, @NonNull ConstraintLayout llUser, @NonNull LinearLayout llVip, @NonNull ConstraintLayout main, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvNickname, @NonNull TextView tvRemainTime, @NonNull TextView tvRenew, @NonNull TextView tvResolutionTitle) {
        this.f41788b = rootView;
        this.f41789c = clLeft;
        this.f41790d = clRight;
        this.f41791e = flTags;
        this.f41792f = llExit;
        this.f41793g = llFeedback;
        this.f41794h = llSettings;
        this.f41795i = llUser;
        this.f41796j = llVip;
        this.f41797k = main;
        this.f41798l = sdvImage;
        this.f41799m = tvNickname;
        this.f41800n = tvRemainTime;
        this.f41801o = tvRenew;
        this.f41802p = tvResolutionTitle;
    }

    @NonNull
    public static m90 bind(@NonNull View rootView) {
        int i10 = R.id.clLeft;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.clLeft);
        if (constraintLayout != null) {
            i10 = R.id.clRight;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.clRight);
            if (linearLayout != null) {
                i10 = R.id.flTags;
                FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.flTags);
                if (flowLayout != null) {
                    i10 = R.id.llExit;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llExit);
                    if (linearLayout2 != null) {
                        i10 = R.id.llFeedback;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llFeedback);
                        if (linearLayout3 != null) {
                            i10 = R.id.llSettings;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llSettings);
                            if (linearLayout4 != null) {
                                i10 = R.id.llUser;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.llUser);
                                if (constraintLayout2 != null) {
                                    i10 = R.id.llVip;
                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llVip);
                                    if (linearLayout5 != null) {
                                        i10 = R.id.main;
                                        ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                        if (constraintLayout3 != null) {
                                            i10 = R.id.sdv_image;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                            if (simpleDraweeView != null) {
                                                i10 = R.id.tv_nickname;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_nickname);
                                                if (textView != null) {
                                                    i10 = R.id.tvRemainTime;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRemainTime);
                                                    if (textView2 != null) {
                                                        i10 = R.id.tvRenew;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvRenew);
                                                        if (textView3 != null) {
                                                            i10 = R.id.tv_resolution_title;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_resolution_title);
                                                            if (textView4 != null) {
                                                                return new m90((FrameLayout) rootView, constraintLayout, linearLayout, flowLayout, linearLayout2, linearLayout3, linearLayout4, constraintLayout2, linearLayout5, constraintLayout3, simpleDraweeView, textView, textView2, textView3, textView4);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
    public static m90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f41788b;
    }

    @NonNull
    public static m90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_float_menu, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
