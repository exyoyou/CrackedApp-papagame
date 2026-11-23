package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class i7 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f39704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39707e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39708f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f39709g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39710h;

    private i7(@NonNull FrameLayout rootView, @NonNull FrameLayout loadMoreLoadCompleteView, @NonNull FrameLayout loadMoreLoadEndView, @NonNull FrameLayout loadMoreLoadFailView, @NonNull LinearLayout loadMoreLoadingView, @NonNull ProgressBar loadingProgress, @NonNull TextView loadingText) {
        this.f39704b = rootView;
        this.f39705c = loadMoreLoadCompleteView;
        this.f39706d = loadMoreLoadEndView;
        this.f39707e = loadMoreLoadFailView;
        this.f39708f = loadMoreLoadingView;
        this.f39709g = loadingProgress;
        this.f39710h = loadingText;
    }

    @NonNull
    public static i7 bind(@NonNull View rootView) {
        int i10 = R.id.load_more_load_complete_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.load_more_load_complete_view);
        if (frameLayout != null) {
            i10 = R.id.load_more_load_end_view;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.load_more_load_end_view);
            if (frameLayout2 != null) {
                i10 = R.id.load_more_load_fail_view;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.load_more_load_fail_view);
                if (frameLayout3 != null) {
                    i10 = R.id.load_more_loading_view;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.load_more_loading_view);
                    if (linearLayout != null) {
                        i10 = R.id.loading_progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.loading_progress);
                        if (progressBar != null) {
                            i10 = R.id.loading_text;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.loading_text);
                            if (textView != null) {
                                return new i7((FrameLayout) rootView, frameLayout, frameLayout2, frameLayout3, linearLayout, progressBar, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static i7 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f39704b;
    }

    @NonNull
    public static i7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.brvah_trailing_load_more, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
