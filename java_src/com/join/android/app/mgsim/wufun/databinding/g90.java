package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class g90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38765d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38766e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38767f;

    private g90(@NonNull LinearLayout rootView, @NonNull ImageView ivSort, @NonNull ImageView ivViewPoster, @NonNull TextView tvSort, @NonNull TextView viewPoster) {
        this.f38763b = rootView;
        this.f38764c = ivSort;
        this.f38765d = ivViewPoster;
        this.f38766e = tvSort;
        this.f38767f = viewPoster;
    }

    @NonNull
    public static g90 bind(@NonNull View rootView) {
        int i10 = R.id.iv_sort;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_sort);
        if (imageView != null) {
            i10 = R.id.iv_view_poster;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_view_poster);
            if (imageView2 != null) {
                i10 = R.id.tv_sort;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_sort);
                if (textView != null) {
                    i10 = R.id.view_poster;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.view_poster);
                    if (textView2 != null) {
                        return new g90((LinearLayout) rootView, imageView, imageView2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static g90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38763b;
    }

    @NonNull
    public static g90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_forum_stick_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
