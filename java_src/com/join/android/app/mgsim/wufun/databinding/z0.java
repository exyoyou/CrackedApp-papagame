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
public final class z0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f48015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48016f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48017g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f48018h;

    private z0(@NonNull RelativeLayout rootView, @NonNull ImageView ivLoading, @NonNull LinearLayout llDownloadStatus, @NonNull ProgressBar pbProgress, @NonNull TextView tvLaunchStatus, @NonNull TextView tvProgressStatus1, @NonNull TextView tvProgressStatus2) {
        this.f48012b = rootView;
        this.f48013c = ivLoading;
        this.f48014d = llDownloadStatus;
        this.f48015e = pbProgress;
        this.f48016f = tvLaunchStatus;
        this.f48017g = tvProgressStatus1;
        this.f48018h = tvProgressStatus2;
    }

    @NonNull
    public static z0 bind(@NonNull View rootView) {
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
                                return new z0((RelativeLayout) rootView, imageView, linearLayout, progressBar, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static z0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48012b;
    }

    @NonNull
    public static z0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_emu_loading, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
