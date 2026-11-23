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
public final class aa0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f35725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ca0 f35727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final da0 f35728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final da0 f35729f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f35730g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f35731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ga0 f35732i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f35733j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f35734k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f35735l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f35736m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f35737n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f35738o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f35739p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f35740q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f35741r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final View f35742s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f35743t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ImageView f35744u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final ImageView f35745v;

    private aa0(@NonNull ConstraintLayout rootView, @NonNull ImageView a10, @NonNull ca0 analogAll, @NonNull da0 analogL, @NonNull da0 analogR, @NonNull ImageView b10, @NonNull ConstraintLayout cl, @NonNull ga0 dpad, @NonNull View kh, @NonNull ImageView lb2, @NonNull ImageView ls, @NonNull ImageView lt, @NonNull ImageView menu, @NonNull ImageView rb2, @NonNull ImageView rs, @NonNull ImageView rt, @NonNull ImageView screenshot, @NonNull View space, @NonNull TextView tip, @NonNull ImageView x10, @NonNull ImageView y10) {
        this.f35725b = rootView;
        this.f35726c = a10;
        this.f35727d = analogAll;
        this.f35728e = analogL;
        this.f35729f = analogR;
        this.f35730g = b10;
        this.f35731h = cl;
        this.f35732i = dpad;
        this.f35733j = kh;
        this.f35734k = lb2;
        this.f35735l = ls;
        this.f35736m = lt;
        this.f35737n = menu;
        this.f35738o = rb2;
        this.f35739p = rs;
        this.f35740q = rt;
        this.f35741r = screenshot;
        this.f35742s = space;
        this.f35743t = tip;
        this.f35744u = x10;
        this.f35745v = y10;
    }

    @NonNull
    public static aa0 bind(@NonNull View rootView) {
        int i10 = R.id.f35449a;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35449a);
        if (imageView != null) {
            i10 = R.id.analog_all;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.analog_all);
            if (viewFindChildViewById != null) {
                ca0 ca0VarBind = ca0.bind(viewFindChildViewById);
                i10 = R.id.analog_l;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.analog_l);
                if (viewFindChildViewById2 != null) {
                    da0 da0VarBind = da0.bind(viewFindChildViewById2);
                    i10 = R.id.analog_r;
                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.analog_r);
                    if (viewFindChildViewById3 != null) {
                        da0 da0VarBind2 = da0.bind(viewFindChildViewById3);
                        i10 = R.id.f35453b;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35453b);
                        if (imageView2 != null) {
                            i10 = R.id.cl;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl);
                            if (constraintLayout != null) {
                                i10 = R.id.dpad;
                                View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.dpad);
                                if (viewFindChildViewById4 != null) {
                                    ga0 ga0VarBind = ga0.bind(viewFindChildViewById4);
                                    i10 = R.id.kh;
                                    View viewFindChildViewById5 = ViewBindings.findChildViewById(rootView, R.id.kh);
                                    if (viewFindChildViewById5 != null) {
                                        i10 = R.id.f35475lb;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35475lb);
                                        if (imageView3 != null) {
                                            i10 = R.id.ls;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ls);
                                            if (imageView4 != null) {
                                                i10 = R.id.lt;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lt);
                                                if (imageView5 != null) {
                                                    i10 = R.id.menu;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.menu);
                                                    if (imageView6 != null) {
                                                        i10 = R.id.f35484rb;
                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35484rb);
                                                        if (imageView7 != null) {
                                                            i10 = R.id.rs;
                                                            ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.rs);
                                                            if (imageView8 != null) {
                                                                i10 = R.id.rt;
                                                                ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.rt);
                                                                if (imageView9 != null) {
                                                                    i10 = R.id.screenshot;
                                                                    ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.screenshot);
                                                                    if (imageView10 != null) {
                                                                        i10 = R.id.space;
                                                                        View viewFindChildViewById6 = ViewBindings.findChildViewById(rootView, R.id.space);
                                                                        if (viewFindChildViewById6 != null) {
                                                                            i10 = R.id.tip;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
                                                                            if (textView != null) {
                                                                                i10 = R.id.f35491x;
                                                                                ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                                                                if (imageView11 != null) {
                                                                                    i10 = R.id.f35492y;
                                                                                    ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35492y);
                                                                                    if (imageView12 != null) {
                                                                                        return new aa0((ConstraintLayout) rootView, imageView, ca0VarBind, da0VarBind, da0VarBind2, imageView2, constraintLayout, ga0VarBind, viewFindChildViewById5, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, viewFindChildViewById6, textView, imageView11, imageView12);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static aa0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f35725b;
    }

    @NonNull
    public static aa0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_pad_add, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
