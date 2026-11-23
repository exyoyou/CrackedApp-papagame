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

/* JADX INFO: loaded from: classes4.dex */
public final class ev implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f38106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38110f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f38111g;

    private ev(@NonNull ConstraintLayout rootView, @NonNull ImageView iv, @NonNull ImageView ivVip, @NonNull LinearLayout ll, @NonNull TextView tvFrame, @NonNull TextView tvName) {
        this.f38106b = rootView;
        this.f38107c = iv;
        this.f38108d = ivVip;
        this.f38109e = ll;
        this.f38110f = tvFrame;
        this.f38111g = tvName;
    }

    @NonNull
    public static ev bind(@NonNull View rootView) {
        int i10 = R.id.iv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv);
        if (imageView != null) {
            i10 = R.id.ivVip;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivVip);
            if (imageView2 != null) {
                i10 = R.id.ll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll);
                if (linearLayout != null) {
                    i10 = R.id.tvFrame;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvFrame);
                    if (textView != null) {
                        i10 = R.id.tvName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvName);
                        if (textView2 != null) {
                            return new ev((ConstraintLayout) rootView, imageView, imageView2, linearLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ev inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f38106b;
    }

    @NonNull
    public static ev inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.hm_resolution_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
