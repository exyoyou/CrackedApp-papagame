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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43747g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43748h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f43749i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f43750j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f43751k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f43752l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f43753m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f43754n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f43755o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f43756p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f43757q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f43758r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f43759s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f43760t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ImageView f43761u;

    private qb0(@NonNull ConstraintLayout rootView, @NonNull ImageView a10, @NonNull ImageView b10, @NonNull ConstraintLayout controller, @NonNull ConstraintLayout dpad, @NonNull ImageView dpadD, @NonNull ImageView dpadL, @NonNull ImageView dpadR, @NonNull ImageView dpadU, @NonNull ImageView lb2, @NonNull ImageView lt, @NonNull ImageView rb2, @NonNull ImageView rt, @NonNull ImageView select, @NonNull ImageView start, @NonNull ImageView thumbL, @NonNull ImageView thumbR, @NonNull TextView tip, @NonNull ImageView x10, @NonNull ImageView y10) {
        this.f43742b = rootView;
        this.f43743c = a10;
        this.f43744d = b10;
        this.f43745e = controller;
        this.f43746f = dpad;
        this.f43747g = dpadD;
        this.f43748h = dpadL;
        this.f43749i = dpadR;
        this.f43750j = dpadU;
        this.f43751k = lb2;
        this.f43752l = lt;
        this.f43753m = rb2;
        this.f43754n = rt;
        this.f43755o = select;
        this.f43756p = start;
        this.f43757q = thumbL;
        this.f43758r = thumbR;
        this.f43759s = tip;
        this.f43760t = x10;
        this.f43761u = y10;
    }

    @NonNull
    public static qb0 bind(@NonNull View rootView) {
        int i10 = R.id.f35449a;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35449a);
        if (imageView != null) {
            i10 = R.id.f35453b;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35453b);
            if (imageView2 != null) {
                i10 = R.id.controller;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.controller);
                if (constraintLayout != null) {
                    i10 = R.id.dpad;
                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.dpad);
                    if (constraintLayout2 != null) {
                        i10 = R.id.dpad_d;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dpad_d);
                        if (imageView3 != null) {
                            i10 = R.id.dpad_l;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dpad_l);
                            if (imageView4 != null) {
                                i10 = R.id.dpad_r;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dpad_r);
                                if (imageView5 != null) {
                                    i10 = R.id.dpad_u;
                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dpad_u);
                                    if (imageView6 != null) {
                                        i10 = R.id.f35475lb;
                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35475lb);
                                        if (imageView7 != null) {
                                            i10 = R.id.lt;
                                            ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lt);
                                            if (imageView8 != null) {
                                                i10 = R.id.f35484rb;
                                                ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35484rb);
                                                if (imageView9 != null) {
                                                    i10 = R.id.rt;
                                                    ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.rt);
                                                    if (imageView10 != null) {
                                                        i10 = R.id.select;
                                                        ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.select);
                                                        if (imageView11 != null) {
                                                            i10 = R.id.start;
                                                            ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.start);
                                                            if (imageView12 != null) {
                                                                i10 = R.id.thumb_l;
                                                                ImageView imageView13 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.thumb_l);
                                                                if (imageView13 != null) {
                                                                    i10 = R.id.thumb_r;
                                                                    ImageView imageView14 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.thumb_r);
                                                                    if (imageView14 != null) {
                                                                        i10 = R.id.tip;
                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                                                                        if (textView != null) {
                                                                            i10 = R.id.f35491x;
                                                                            ImageView imageView15 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                                                            if (imageView15 != null) {
                                                                                i10 = R.id.f35492y;
                                                                                ImageView imageView16 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35492y);
                                                                                if (imageView16 != null) {
                                                                                    return new qb0((ConstraintLayout) rootView, imageView, imageView2, constraintLayout, constraintLayout2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12, imageView13, imageView14, textView, imageView15, imageView16);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43742b;
    }

    @NonNull
    public static qb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_peripheral_key_test, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
