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
public final class ih implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f39811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39814f;

    private ih(@NonNull ConstraintLayout rootView, @NonNull ImageView ivClose, @NonNull TextView tvDesc, @NonNull TextView tvGetCoupon, @NonNull TextView tvTitle) {
        this.f39810b = rootView;
        this.f39811c = ivClose;
        this.f39812d = tvDesc;
        this.f39813e = tvGetCoupon;
        this.f39814f = tvTitle;
    }

    @NonNull
    public static ih bind(@NonNull View rootView) {
        int i10 = R.id.ivClose;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
        if (imageView != null) {
            i10 = R.id.tvDesc;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
            if (textView != null) {
                i10 = R.id.tvGetCoupon;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGetCoupon);
                if (textView2 != null) {
                    i10 = R.id.tvTitle;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                    if (textView3 != null) {
                        return new ih((ConstraintLayout) rootView, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ih inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39810b;
    }

    @NonNull
    public static ih inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_online_coupon, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
