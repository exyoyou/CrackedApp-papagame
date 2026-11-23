package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class h7 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f39198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f39202f;

    private h7(@NonNull FrameLayout rootView, @NonNull FrameLayout loadMoreLoadEndView, @NonNull FrameLayout loadMoreLoadFailView, @NonNull LinearLayout loadMoreLoadingView, @NonNull ProgressBar loadingProgress) {
        this.f39198b = rootView;
        this.f39199c = loadMoreLoadEndView;
        this.f39200d = loadMoreLoadFailView;
        this.f39201e = loadMoreLoadingView;
        this.f39202f = loadingProgress;
    }

    @NonNull
    public static h7 bind(@NonNull View rootView) {
        int i10 = R.id.load_more_load_end_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.load_more_load_end_view);
        if (frameLayout != null) {
            i10 = R.id.load_more_load_fail_view;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.load_more_load_fail_view);
            if (frameLayout2 != null) {
                i10 = R.id.load_more_loading_view;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.load_more_loading_view);
                if (linearLayout != null) {
                    i10 = R.id.loading_progress;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.loading_progress);
                    if (progressBar != null) {
                        return new h7((FrameLayout) rootView, frameLayout, frameLayout2, linearLayout, progressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static h7 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f39198b;
    }

    @NonNull
    public static h7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.brvah_quick_view_load_more_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
