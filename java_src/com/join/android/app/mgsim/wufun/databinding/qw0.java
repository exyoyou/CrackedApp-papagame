package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44075d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f44076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f44077f;

    private qw0(@NonNull LinearLayout rootView, @NonNull TextView appInfo, @NonNull ImageView ivLogo, @NonNull ProgressBar pbDownload, @NonNull TextView tvProcess) {
        this.f44073b = rootView;
        this.f44074c = appInfo;
        this.f44075d = ivLogo;
        this.f44076e = pbDownload;
        this.f44077f = tvProcess;
    }

    @NonNull
    public static qw0 bind(@NonNull View rootView) {
        int i10 = R.id.appInfo;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appInfo);
        if (textView != null) {
            i10 = R.id.ivLogo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivLogo);
            if (imageView != null) {
                i10 = R.id.pbDownload;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pbDownload);
                if (progressBar != null) {
                    i10 = R.id.tvProcess;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvProcess);
                    if (textView2 != null) {
                        return new qw0((LinearLayout) rootView, textView, imageView, progressBar, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44073b;
    }

    @NonNull
    public static qw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.update, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
