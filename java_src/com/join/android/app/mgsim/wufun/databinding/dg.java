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
public final class dg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37452c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37455f;

    private dg(@NonNull ConstraintLayout rootView, @NonNull ImageView iv1, @NonNull TextView tvBtn1, @NonNull TextView tvText1, @NonNull TextView tvText2) {
        this.f37451b = rootView;
        this.f37452c = iv1;
        this.f37453d = tvBtn1;
        this.f37454e = tvText1;
        this.f37455f = tvText2;
    }

    @NonNull
    public static dg bind(@NonNull View rootView) {
        int i10 = R.id.iv_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
        if (imageView != null) {
            i10 = R.id.tv_btn_1;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
            if (textView != null) {
                i10 = R.id.tv_text_1;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                if (textView2 != null) {
                    i10 = R.id.tv_text_2;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_2);
                    if (textView3 != null) {
                        return new dg((ConstraintLayout) rootView, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37451b;
    }

    @NonNull
    public static dg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_hm_common_alert, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
