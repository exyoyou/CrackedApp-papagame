package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class lo implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LJWebView f41434c;

    private lo(@NonNull ConstraintLayout rootView, @NonNull LJWebView web) {
        this.f41433b = rootView;
        this.f41434c = web;
    }

    @NonNull
    public static lo bind(@NonNull View rootView) {
        LJWebView lJWebView = (LJWebView) ViewBindings.findChildViewById(rootView, R.id.web);
        if (lJWebView != null) {
            return new lo((ConstraintLayout) rootView, lJWebView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.web)));
    }

    @NonNull
    public static lo inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41433b;
    }

    @NonNull
    public static lo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_search_web, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
