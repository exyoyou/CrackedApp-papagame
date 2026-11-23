package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.pad.HMButtonView;

/* JADX INFO: loaded from: classes4.dex */
public final class ba0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36293f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36295h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final HMButtonView f36296i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final HMButtonView f36297j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final HMButtonView f36298k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f36299l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36300m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f36301n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36302o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36303p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f36304q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f36305r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final ImageView f36306s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f36307t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ImageView f36308u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f36309v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final ImageView f36310w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final ImageView f36311x;

    private ba0(@NonNull ConstraintLayout rootView, @NonNull ImageView a10, @NonNull ImageView arr, @NonNull ImageView b10, @NonNull ConstraintLayout clKeys, @NonNull ImageView close, @NonNull LinearLayout combineKeys, @NonNull HMButtonView k10, @NonNull HMButtonView k11, @NonNull HMButtonView k12, @NonNull ImageView lb2, @NonNull ImageView ls, @NonNull ImageView lt, @NonNull ConstraintLayout menuBar, @NonNull LinearLayout menuMain, @NonNull ImageView plus1, @NonNull ImageView plus2, @NonNull ImageView rb2, @NonNull ImageView rs, @NonNull ImageView rt, @NonNull TextView save, @NonNull ImageView x10, @NonNull ImageView y10) {
        this.f36289b = rootView;
        this.f36290c = a10;
        this.f36291d = arr;
        this.f36292e = b10;
        this.f36293f = clKeys;
        this.f36294g = close;
        this.f36295h = combineKeys;
        this.f36296i = k10;
        this.f36297j = k11;
        this.f36298k = k12;
        this.f36299l = lb2;
        this.f36300m = ls;
        this.f36301n = lt;
        this.f36302o = menuBar;
        this.f36303p = menuMain;
        this.f36304q = plus1;
        this.f36305r = plus2;
        this.f36306s = rb2;
        this.f36307t = rs;
        this.f36308u = rt;
        this.f36309v = save;
        this.f36310w = x10;
        this.f36311x = y10;
    }

    @NonNull
    public static ba0 bind(@NonNull View rootView) {
        int i10 = R.id.f35449a;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35449a);
        if (imageView != null) {
            i10 = R.id.arr;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arr);
            if (imageView2 != null) {
                i10 = R.id.f35453b;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35453b);
                if (imageView3 != null) {
                    i10 = R.id.cl_keys;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_keys);
                    if (constraintLayout != null) {
                        i10 = R.id.close;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
                        if (imageView4 != null) {
                            i10 = R.id.combine_keys;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.combine_keys);
                            if (linearLayout != null) {
                                i10 = R.id.f35465k1;
                                HMButtonView hMButtonView = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35465k1);
                                if (hMButtonView != null) {
                                    i10 = R.id.f35466k2;
                                    HMButtonView hMButtonView2 = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35466k2);
                                    if (hMButtonView2 != null) {
                                        i10 = R.id.f35467k3;
                                        HMButtonView hMButtonView3 = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35467k3);
                                        if (hMButtonView3 != null) {
                                            i10 = R.id.f35475lb;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35475lb);
                                            if (imageView5 != null) {
                                                i10 = R.id.ls;
                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ls);
                                                if (imageView6 != null) {
                                                    i10 = R.id.lt;
                                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lt);
                                                    if (imageView7 != null) {
                                                        i10 = R.id.menu_bar;
                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.menu_bar);
                                                        if (constraintLayout2 != null) {
                                                            i10 = R.id.menu_main;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.menu_main);
                                                            if (linearLayout2 != null) {
                                                                i10 = R.id.plus1;
                                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.plus1);
                                                                if (imageView8 != null) {
                                                                    i10 = R.id.plus2;
                                                                    ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.plus2);
                                                                    if (imageView9 != null) {
                                                                        i10 = R.id.f35484rb;
                                                                        ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35484rb);
                                                                        if (imageView10 != null) {
                                                                            i10 = R.id.rs;
                                                                            ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.rs);
                                                                            if (imageView11 != null) {
                                                                                i10 = R.id.rt;
                                                                                ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.rt);
                                                                                if (imageView12 != null) {
                                                                                    i10 = R.id.save;
                                                                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.save);
                                                                                    if (textView != null) {
                                                                                        i10 = R.id.f35491x;
                                                                                        ImageView imageView13 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                                                                        if (imageView13 != null) {
                                                                                            i10 = R.id.f35492y;
                                                                                            ImageView imageView14 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35492y);
                                                                                            if (imageView14 != null) {
                                                                                                return new ba0((ConstraintLayout) rootView, imageView, imageView2, imageView3, constraintLayout, imageView4, linearLayout, hMButtonView, hMButtonView2, hMButtonView3, imageView5, imageView6, imageView7, constraintLayout2, linearLayout2, imageView8, imageView9, imageView10, imageView11, imageView12, textView, imageView13, imageView14);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ba0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36289b;
    }

    @NonNull
    public static ba0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_pad_add_combine, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
