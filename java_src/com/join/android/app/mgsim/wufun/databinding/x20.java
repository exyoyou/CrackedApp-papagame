package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class x20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f47052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f47054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47055e;

    private x20(@NonNull CardView rootView, @NonNull ImageView ivBtn, @NonNull CardView root, @NonNull TextView tvBtn) {
        this.f47052b = rootView;
        this.f47053c = ivBtn;
        this.f47054d = root;
        this.f47055e = tvBtn;
    }

    @NonNull
    public static x20 bind(@NonNull View rootView) {
        int i10 = R.id.ivBtn;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivBtn);
        if (imageView != null) {
            CardView cardView = (CardView) rootView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBtn);
            if (textView != null) {
                return new x20(cardView, imageView, cardView, textView);
            }
            i10 = R.id.tvBtn;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static x20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f47052b;
    }

    @NonNull
    public static x20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_hide_app_calculator, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
