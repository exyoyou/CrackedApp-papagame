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
public final class m70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41778c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41779d;

    private m70(@NonNull LinearLayout rootView, @NonNull ImageView ivCheck, @NonNull TextView tvReasonText) {
        this.f41777b = rootView;
        this.f41778c = ivCheck;
        this.f41779d = tvReasonText;
    }

    @NonNull
    public static m70 bind(@NonNull View rootView) {
        int i10 = R.id.iv_check;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_check);
        if (imageView != null) {
            i10 = R.id.tv_reason_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_reason_text);
            if (textView != null) {
                return new m70((LinearLayout) rootView, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static m70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41777b;
    }

    @NonNull
    public static m70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_tag_report_reason, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
