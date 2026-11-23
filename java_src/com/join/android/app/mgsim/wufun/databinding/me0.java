package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CircleDownloadProgressBar;

/* JADX INFO: loaded from: classes4.dex */
public final class me0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41856c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CircleDownloadProgressBar f41857d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41858e;

    private me0(@NonNull RelativeLayout rootView, @NonNull RelativeLayout main, @NonNull CircleDownloadProgressBar progressBar, @NonNull TextView textView) {
        this.f41855b = rootView;
        this.f41856c = main;
        this.f41857d = progressBar;
        this.f41858e = textView;
    }

    @NonNull
    public static me0 bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.progressBar;
        CircleDownloadProgressBar circleDownloadProgressBar = (CircleDownloadProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
        if (circleDownloadProgressBar != null) {
            i10 = R.id.textView;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
            if (textView != null) {
                return new me0(relativeLayout, relativeLayout, circleDownloadProgressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static me0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41855b;
    }

    @NonNull
    public static me0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.loding_progress_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
