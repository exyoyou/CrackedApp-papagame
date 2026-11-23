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
public final class fe implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f38359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38362e;

    private fe(@NonNull CardView rootView, @NonNull ImageView ivClose, @NonNull TextView tvKnown, @NonNull TextView tvMessage) {
        this.f38359b = rootView;
        this.f38360c = ivClose;
        this.f38361d = tvKnown;
        this.f38362e = tvMessage;
    }

    @NonNull
    public static fe bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (imageView != null) {
            i10 = R.id.tv_known;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_known);
            if (textView != null) {
                i10 = R.id.tv_message;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_message);
                if (textView2 != null) {
                    return new fe((CardView) rootView, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static fe inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f38359b;
    }

    @NonNull
    public static fe inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_bespeak_tip, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
