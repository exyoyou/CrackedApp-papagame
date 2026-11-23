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
public final class sb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f44712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f44713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f44714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44715f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f44716g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f44717h;

    private sb0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout controller, @NonNull TextView tip, @NonNull TextView vbBtn, @NonNull ImageView vbL, @NonNull ImageView vbR, @NonNull TextView vbTip) {
        this.f44711b = rootView;
        this.f44712c = controller;
        this.f44713d = tip;
        this.f44714e = vbBtn;
        this.f44715f = vbL;
        this.f44716g = vbR;
        this.f44717h = vbTip;
    }

    @NonNull
    public static sb0 bind(@NonNull View rootView) {
        int i10 = R.id.controller;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.controller);
        if (constraintLayout != null) {
            i10 = R.id.tip;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip);
            if (textView != null) {
                i10 = R.id.vb_btn;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vb_btn);
                if (textView2 != null) {
                    i10 = R.id.vb_l;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.vb_l);
                    if (imageView != null) {
                        i10 = R.id.vb_r;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.vb_r);
                        if (imageView2 != null) {
                            i10 = R.id.vb_tip;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vb_tip);
                            if (textView3 != null) {
                                return new sb0((ConstraintLayout) rootView, constraintLayout, textView, textView2, imageView, imageView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44711b;
    }

    @NonNull
    public static sb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_peripheral_vibrate_test, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
