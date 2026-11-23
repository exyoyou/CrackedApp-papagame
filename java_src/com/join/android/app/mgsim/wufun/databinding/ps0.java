package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ps0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f43510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f43511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43513e;

    private ps0(@NonNull View rootView, @NonNull FrameLayout flInner, @NonNull ImageView pullToRefreshImage, @NonNull ProgressBar pullToRefreshProgress) {
        this.f43510b = rootView;
        this.f43511c = flInner;
        this.f43512d = pullToRefreshImage;
        this.f43513e = pullToRefreshProgress;
    }

    @NonNull
    public static ps0 a(@NonNull LayoutInflater inflater, @NonNull ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.pull_to_refresh_header_horizontal, parent);
        return bind(parent);
    }

    @NonNull
    public static ps0 bind(@NonNull View rootView) {
        int i10 = R.id.fl_inner;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_inner);
        if (frameLayout != null) {
            i10 = R.id.pull_to_refresh_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.pull_to_refresh_image);
            if (imageView != null) {
                i10 = R.id.pull_to_refresh_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pull_to_refresh_progress);
                if (progressBar != null) {
                    return new ps0(rootView, frameLayout, imageView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f43510b;
    }
}
