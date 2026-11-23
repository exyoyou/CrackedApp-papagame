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
public final class dv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37637c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f37638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37640f;

    private dv(@NonNull ConstraintLayout rootView, @NonNull ImageView delete, @NonNull ImageView edit, @NonNull LinearLayout modify, @NonNull TextView tvName) {
        this.f37636b = rootView;
        this.f37637c = delete;
        this.f37638d = edit;
        this.f37639e = modify;
        this.f37640f = tvName;
    }

    @NonNull
    public static dv bind(@NonNull View rootView) {
        int i10 = R.id.delete;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.delete);
        if (imageView != null) {
            i10 = R.id.edit;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.edit);
            if (imageView2 != null) {
                i10 = R.id.modify;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.modify);
                if (linearLayout != null) {
                    i10 = R.id.tvName;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvName);
                    if (textView != null) {
                        return new dv((ConstraintLayout) rootView, imageView, imageView2, linearLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37636b;
    }

    @NonNull
    public static dv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.hm_pad_type_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
