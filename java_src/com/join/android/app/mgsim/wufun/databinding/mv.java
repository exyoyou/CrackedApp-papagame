package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import me.relex.photodraweeview.PhotoDraweeView;

/* JADX INFO: loaded from: classes4.dex */
public final class mv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f42055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final PhotoDraweeView f42056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ProgressBar f42057d;

    private mv(@NonNull FrameLayout rootView, @NonNull PhotoDraweeView image, @NonNull ProgressBar loading) {
        this.f42055b = rootView;
        this.f42056c = image;
        this.f42057d = loading;
    }

    @NonNull
    public static mv bind(@NonNull View rootView) {
        int i10 = R.id.image;
        PhotoDraweeView photoDraweeView = (PhotoDraweeView) ViewBindings.findChildViewById(rootView, R.id.image);
        if (photoDraweeView != null) {
            i10 = R.id.loading;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.loading);
            if (progressBar != null) {
                return new mv((FrameLayout) rootView, photoDraweeView, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f42055b;
    }

    @NonNull
    public static mv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.image_detail_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
