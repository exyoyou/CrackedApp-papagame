package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ei implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f37976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37977d;

    private ei(@NonNull LinearLayout rootView, @NonNull ProgressBar pbLoading, @NonNull TextView tvProgressStatus) {
        this.f37975b = rootView;
        this.f37976c = pbLoading;
        this.f37977d = tvProgressStatus;
    }

    @NonNull
    public static ei bind(@NonNull View rootView) {
        int i10 = R.id.pb_loading;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pb_loading);
        if (progressBar != null) {
            i10 = R.id.tv_progress_status;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_progress_status);
            if (textView != null) {
                return new ei((LinearLayout) rootView, progressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ei inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37975b;
    }

    @NonNull
    public static ei inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_upload_progress, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
