package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f43990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f43991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43992d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43994f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43995g;

    private qs0(@NonNull View rootView, @NonNull FrameLayout flInner, @NonNull ImageView pullToRefreshImage, @NonNull ProgressBar pullToRefreshProgress, @NonNull TextView pullToRefreshSubText, @NonNull TextView pullToRefreshText) {
        this.f43990b = rootView;
        this.f43991c = flInner;
        this.f43992d = pullToRefreshImage;
        this.f43993e = pullToRefreshProgress;
        this.f43994f = pullToRefreshSubText;
        this.f43995g = pullToRefreshText;
    }

    @NonNull
    public static qs0 a(@NonNull LayoutInflater inflater, @NonNull ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.pull_to_refresh_header_vertical, parent);
        return bind(parent);
    }

    @NonNull
    public static qs0 bind(@NonNull View rootView) {
        int i10 = R.id.fl_inner;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fl_inner);
        if (frameLayout != null) {
            i10 = R.id.pull_to_refresh_image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.pull_to_refresh_image);
            if (imageView != null) {
                i10 = R.id.pull_to_refresh_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pull_to_refresh_progress);
                if (progressBar != null) {
                    i10 = R.id.pull_to_refresh_sub_text;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.pull_to_refresh_sub_text);
                    if (textView != null) {
                        i10 = R.id.pull_to_refresh_text;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.pull_to_refresh_text);
                        if (textView2 != null) {
                            return new qs0(rootView, frameLayout, imageView, progressBar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f43990b;
    }
}
