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
public final class yg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47716f;

    private yg(@NonNull LinearLayout rootView, @NonNull ImageView centerImage, @NonNull TextView centerText, @NonNull ImageView ivClose, @NonNull TextView tvModOptRight) {
        this.f47712b = rootView;
        this.f47713c = centerImage;
        this.f47714d = centerText;
        this.f47715e = ivClose;
        this.f47716f = tvModOptRight;
    }

    @NonNull
    public static yg bind(@NonNull View rootView) {
        int i10 = R.id.centerImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.centerImage);
        if (imageView != null) {
            i10 = R.id.centerText;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.centerText);
            if (textView != null) {
                i10 = R.id.iv_close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                if (imageView2 != null) {
                    i10 = R.id.tv_mod_opt_right;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_mod_opt_right);
                    if (textView2 != null) {
                        return new yg((LinearLayout) rootView, imageView, textView, imageView2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static yg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47712b;
    }

    @NonNull
    public static yg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_mod_download_new, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
