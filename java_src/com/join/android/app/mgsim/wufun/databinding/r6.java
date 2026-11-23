package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class r6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f44240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LJWebView f44241c;

    private r6(@NonNull FrameLayout rootView, @NonNull LJWebView web) {
        this.f44240b = rootView;
        this.f44241c = web;
    }

    @NonNull
    public static r6 bind(@NonNull View rootView) {
        LJWebView lJWebView = (LJWebView) ViewBindings.findChildViewById(rootView, R.id.web);
        if (lJWebView != null) {
            return new r6((FrameLayout) rootView, lJWebView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.web)));
    }

    @NonNull
    public static r6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f44240b;
    }

    @NonNull
    public static r6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.arena_web, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
