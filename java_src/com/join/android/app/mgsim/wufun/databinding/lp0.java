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

/* JADX INFO: loaded from: classes4.dex */
public final class lp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41465d;

    private lp0(@NonNull LinearLayout rootView, @NonNull ImageView paiweiCancelIv, @NonNull TextView paiweiRuleTv) {
        this.f41463b = rootView;
        this.f41464c = paiweiCancelIv;
        this.f41465d = paiweiRuleTv;
    }

    @NonNull
    public static lp0 bind(@NonNull View rootView) {
        int i10 = R.id.paiwei_cancel_iv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.paiwei_cancel_iv);
        if (imageView != null) {
            i10 = R.id.paiwei_rule_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.paiwei_rule_tv);
            if (textView != null) {
                return new lp0((LinearLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41463b;
    }

    @NonNull
    public static lp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.paiwei_rule_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
