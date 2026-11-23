package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class zo implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f48336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LJWebView f48337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48338f;

    private zo(@NonNull RelativeLayout rootView, @NonNull LinearLayout lodingLayout, @NonNull FrameLayout videoView, @NonNull LJWebView web, @NonNull RelativeLayout weblayout) {
        this.f48334b = rootView;
        this.f48335c = lodingLayout;
        this.f48336d = videoView;
        this.f48337e = web;
        this.f48338f = weblayout;
    }

    @NonNull
    public static zo bind(@NonNull View rootView) {
        int i10 = R.id.loding_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_layout);
        if (linearLayout != null) {
            i10 = R.id.video_view;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.video_view);
            if (frameLayout != null) {
                i10 = R.id.web;
                LJWebView lJWebView = (LJWebView) ViewBindings.findChildViewById(rootView, R.id.web);
                if (lJWebView != null) {
                    i10 = R.id.weblayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.weblayout);
                    if (relativeLayout != null) {
                        return new zo((RelativeLayout) rootView, linearLayout, frameLayout, lJWebView, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static zo inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48334b;
    }

    @NonNull
    public static zo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.full_share_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
