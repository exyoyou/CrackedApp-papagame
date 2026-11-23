package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class uw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f45952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45953f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f45954g;

    private uw0(@NonNull RelativeLayout rootView, @NonNull ImageView lodingBackImage, @NonNull LinearLayout message, @NonNull ProgressBar progressBar, @NonNull TextView progressmessage, @NonNull ProgressBar uZIPLoading) {
        this.f45949b = rootView;
        this.f45950c = lodingBackImage;
        this.f45951d = message;
        this.f45952e = progressBar;
        this.f45953f = progressmessage;
        this.f45954g = uZIPLoading;
    }

    @NonNull
    public static uw0 bind(@NonNull View rootView) {
        int i10 = R.id.lodingBackImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
        if (imageView != null) {
            i10 = R.id.message;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.message);
            if (linearLayout != null) {
                i10 = R.id.progressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                if (progressBar != null) {
                    i10 = R.id.progressmessage;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.progressmessage);
                    if (textView != null) {
                        i10 = R.id.uZIPLoading;
                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.uZIPLoading);
                        if (progressBar2 != null) {
                            return new uw0((RelativeLayout) rootView, imageView, linearLayout, progressBar, textView, progressBar2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static uw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45949b;
    }

    @NonNull
    public static uw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.update_loding_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
