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
public final class q implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43592c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43593d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43594e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43595f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43596g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43597h;

    private q(@NonNull RelativeLayout rootView, @NonNull ImageView ivLoading, @NonNull LinearLayout llDownloadStatus, @NonNull ProgressBar pbProgress, @NonNull TextView tvLaunchStatus, @NonNull TextView tvProgressStatus1, @NonNull TextView tvProgressStatus2) {
        this.f43591b = rootView;
        this.f43592c = ivLoading;
        this.f43593d = llDownloadStatus;
        this.f43594e = pbProgress;
        this.f43595f = tvLaunchStatus;
        this.f43596g = tvProgressStatus1;
        this.f43597h = tvProgressStatus2;
    }

    @NonNull
    public static q bind(@NonNull View rootView) {
        int i10 = R.id.iv_loading;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_loading);
        if (imageView != null) {
            i10 = R.id.ll_download_status;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_download_status);
            if (linearLayout != null) {
                i10 = R.id.pb_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pb_progress);
                if (progressBar != null) {
                    i10 = R.id.tv_launch_status;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_launch_status);
                    if (textView != null) {
                        i10 = R.id.tv_progress_status_1;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_progress_status_1);
                        if (textView2 != null) {
                            i10 = R.id.tv_progress_status_2;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_progress_status_2);
                            if (textView3 != null) {
                                return new q((RelativeLayout) rootView, imageView, linearLayout, progressBar, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static q inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43591b;
    }

    @NonNull
    public static q inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_cloud_box_main, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
