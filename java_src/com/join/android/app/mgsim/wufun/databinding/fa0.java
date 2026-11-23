package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.pad.HMAnalogView;
import com.join.kotlin.module.hmcloud.pad.HMDpadView;

/* JADX INFO: loaded from: classes4.dex */
public final class fa0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HMAnalogView f38310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HMAnalogView f38311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final HMDpadView f38312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38313f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f38314g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f38315h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f38316i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f38317j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f38318k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f38319l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f38320m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f38321n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f38322o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f38323p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f38324q;

    private fa0(@NonNull ConstraintLayout rootView, @NonNull HMAnalogView analogL, @NonNull HMAnalogView analogR, @NonNull HMDpadView dpad, @NonNull ImageView ka2, @NonNull ImageView kb2, @NonNull ImageView kx, @NonNull ImageView ky, @NonNull ImageView lb2, @NonNull ImageView ls, @NonNull ImageView lt, @NonNull ImageView menu, @NonNull ImageView rb2, @NonNull ImageView rs, @NonNull ImageView rt, @NonNull ImageView screenshot) {
        this.f38309b = rootView;
        this.f38310c = analogL;
        this.f38311d = analogR;
        this.f38312e = dpad;
        this.f38313f = ka2;
        this.f38314g = kb2;
        this.f38315h = kx;
        this.f38316i = ky;
        this.f38317j = lb2;
        this.f38318k = ls;
        this.f38319l = lt;
        this.f38320m = menu;
        this.f38321n = rb2;
        this.f38322o = rs;
        this.f38323p = rt;
        this.f38324q = screenshot;
    }

    @NonNull
    public static fa0 bind(@NonNull View rootView) {
        int i10 = R.id.analogL;
        HMAnalogView hMAnalogView = (HMAnalogView) ViewBindings.findChildViewById(rootView, R.id.analogL);
        if (hMAnalogView != null) {
            i10 = R.id.analogR;
            HMAnalogView hMAnalogView2 = (HMAnalogView) ViewBindings.findChildViewById(rootView, R.id.analogR);
            if (hMAnalogView2 != null) {
                i10 = R.id.dpad;
                HMDpadView hMDpadView = (HMDpadView) ViewBindings.findChildViewById(rootView, R.id.dpad);
                if (hMDpadView != null) {
                    i10 = R.id.f35469ka;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35469ka);
                    if (imageView != null) {
                        i10 = R.id.f35470kb;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35470kb);
                        if (imageView2 != null) {
                            i10 = R.id.kx;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.kx);
                            if (imageView3 != null) {
                                i10 = R.id.ky;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ky);
                                if (imageView4 != null) {
                                    i10 = R.id.f35475lb;
                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35475lb);
                                    if (imageView5 != null) {
                                        i10 = R.id.ls;
                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ls);
                                        if (imageView6 != null) {
                                            i10 = R.id.lt;
                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lt);
                                            if (imageView7 != null) {
                                                i10 = R.id.menu;
                                                ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.menu);
                                                if (imageView8 != null) {
                                                    i10 = R.id.f35484rb;
                                                    ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35484rb);
                                                    if (imageView9 != null) {
                                                        i10 = R.id.rs;
                                                        ImageView imageView10 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.rs);
                                                        if (imageView10 != null) {
                                                            i10 = R.id.rt;
                                                            ImageView imageView11 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.rt);
                                                            if (imageView11 != null) {
                                                                i10 = R.id.screenshot;
                                                                ImageView imageView12 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.screenshot);
                                                                if (imageView12 != null) {
                                                                    return new fa0((ConstraintLayout) rootView, hMAnalogView, hMAnalogView2, hMDpadView, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12);
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
    public static fa0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38309b;
    }

    @NonNull
    public static fa0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_pad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
