package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.DownloadLabeledProgressView;

/* JADX INFO: loaded from: classes4.dex */
public final class nx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final DownloadLabeledProgressView f42548f;

    private nx0(@NonNull LinearLayout rootView, @NonNull ImageView ivImage, @NonNull RelativeLayout rlInstall, @NonNull TextView tvSubText, @NonNull DownloadLabeledProgressView tvText) {
        this.f42544b = rootView;
        this.f42545c = ivImage;
        this.f42546d = rlInstall;
        this.f42547e = tvSubText;
        this.f42548f = tvText;
    }

    @NonNull
    public static nx0 bind(@NonNull View rootView) {
        int i10 = R.id.iv_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_image);
        if (imageView != null) {
            i10 = R.id.rl_install;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_install);
            if (relativeLayout != null) {
                i10 = R.id.tv_sub_text;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sub_text);
                if (textView != null) {
                    i10 = R.id.tv_text;
                    DownloadLabeledProgressView downloadLabeledProgressView = (DownloadLabeledProgressView) ViewBindings.findChildViewById(rootView, R.id.tv_text);
                    if (downloadLabeledProgressView != null) {
                        return new nx0((LinearLayout) rootView, imageView, relativeLayout, textView, downloadLabeledProgressView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42544b;
    }

    @NonNull
    public static nx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_down_load_normal, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
