package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ExpandLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class k10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ExpandLayout f40533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ExpandLayout f40534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f40535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f40536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f40537i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f40538j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40539k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40540l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40541m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40542n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40543o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f40544p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f40545q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f40546r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f40547s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f40548t;

    private k10(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull LinearLayout backLayout1, @NonNull ExpandLayout elView, @NonNull ExpandLayout elView1, @NonNull ImageView icon, @NonNull ImageView icon1, @NonNull ImageView imageView5, @NonNull ImageView imageView51, @NonNull LinearLayout llWelfare, @NonNull LinearLayout llWelfare1, @NonNull LinearLayout lookOther, @NonNull LinearLayout lookOther1, @NonNull TextView moreText, @NonNull TextView moreText1, @NonNull TextView textView9, @NonNull TextView textView91, @NonNull TextView titleText, @NonNull TextView titleText1) {
        this.f40530b = rootView;
        this.f40531c = backLayout;
        this.f40532d = backLayout1;
        this.f40533e = elView;
        this.f40534f = elView1;
        this.f40535g = icon;
        this.f40536h = icon1;
        this.f40537i = imageView5;
        this.f40538j = imageView51;
        this.f40539k = llWelfare;
        this.f40540l = llWelfare1;
        this.f40541m = lookOther;
        this.f40542n = lookOther1;
        this.f40543o = moreText;
        this.f40544p = moreText1;
        this.f40545q = textView9;
        this.f40546r = textView91;
        this.f40547s = titleText;
        this.f40548t = titleText1;
    }

    @NonNull
    public static k10 bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.backLayout_1;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout_1);
            if (linearLayout2 != null) {
                i10 = R.id.el_view;
                ExpandLayout expandLayout = (ExpandLayout) ViewBindings.findChildViewById(rootView, R.id.el_view);
                if (expandLayout != null) {
                    i10 = R.id.el_view_1;
                    ExpandLayout expandLayout2 = (ExpandLayout) ViewBindings.findChildViewById(rootView, R.id.el_view_1);
                    if (expandLayout2 != null) {
                        i10 = R.id.icon;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
                        if (imageView != null) {
                            i10 = R.id.icon_1;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon_1);
                            if (imageView2 != null) {
                                i10 = R.id.imageView5;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
                                if (imageView3 != null) {
                                    i10 = R.id.imageView5_1;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5_1);
                                    if (imageView4 != null) {
                                        i10 = R.id.ll_welfare;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_welfare);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.ll_welfare_1;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_welfare_1);
                                            if (linearLayout4 != null) {
                                                i10 = R.id.look_other;
                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
                                                if (linearLayout5 != null) {
                                                    i10 = R.id.look_other_1;
                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other_1);
                                                    if (linearLayout6 != null) {
                                                        i10 = R.id.moreText;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText);
                                                        if (textView != null) {
                                                            i10 = R.id.moreText_1;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText_1);
                                                            if (textView2 != null) {
                                                                i10 = R.id.textView9;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.textView9_1;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9_1);
                                                                    if (textView4 != null) {
                                                                        i10 = R.id.titleText;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                                                        if (textView5 != null) {
                                                                            i10 = R.id.titleText_1;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText_1);
                                                                            if (textView6 != null) {
                                                                                return new k10((LinearLayout) rootView, linearLayout, linearLayout2, expandLayout, expandLayout2, imageView, imageView2, imageView3, imageView4, linearLayout3, linearLayout4, linearLayout5, linearLayout6, textView, textView2, textView3, textView4, textView5, textView6);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static k10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40530b;
    }

    @NonNull
    public static k10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_bt_welfare, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
