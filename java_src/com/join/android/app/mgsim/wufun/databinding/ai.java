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
public final class ai implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35840f;

    private ai(@NonNull LinearLayout rootView, @NonNull ImageView ivClose, @NonNull TextView textView103, @NonNull TextView tvContent, @NonNull TextView tvKnown) {
        this.f35836b = rootView;
        this.f35837c = ivClose;
        this.f35838d = textView103;
        this.f35839e = tvContent;
        this.f35840f = tvKnown;
    }

    @NonNull
    public static ai bind(@NonNull View rootView) {
        int i10 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
        if (imageView != null) {
            i10 = R.id.textView103;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView103);
            if (textView != null) {
                i10 = R.id.tv_content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_content);
                if (textView2 != null) {
                    i10 = R.id.tv_known;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_known);
                    if (textView3 != null) {
                        return new ai((LinearLayout) rootView, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ai inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35836b;
    }

    @NonNull
    public static ai inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_system_tip, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
