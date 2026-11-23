package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJNestScrollWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class il implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39856c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LJNestScrollWebView f39857d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39858e;

    private il(@NonNull RelativeLayout rootView, @NonNull LinearLayout lodingLayout, @NonNull LJNestScrollWebView web, @NonNull RelativeLayout weblayout) {
        this.f39855b = rootView;
        this.f39856c = lodingLayout;
        this.f39857d = web;
        this.f39858e = weblayout;
    }

    @NonNull
    public static il bind(@NonNull View rootView) {
        int i10 = R.id.loding_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_layout);
        if (linearLayout != null) {
            i10 = R.id.web;
            LJNestScrollWebView lJNestScrollWebView = (LJNestScrollWebView) ViewBindings.findChildViewById(rootView, R.id.web);
            if (lJNestScrollWebView != null) {
                i10 = R.id.weblayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.weblayout);
                if (relativeLayout != null) {
                    return new il((RelativeLayout) rootView, linearLayout, lJNestScrollWebView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static il inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39855b;
    }

    @NonNull
    public static il inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_common_webview, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
