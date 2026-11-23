package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class z70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final WebView f48114d;

    private z70(@NonNull LinearLayout rootView, @NonNull LinearLayout popLayoutId, @NonNull WebView wvPopwin) {
        this.f48112b = rootView;
        this.f48113c = popLayoutId;
        this.f48114d = wvPopwin;
    }

    @NonNull
    public static z70 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        WebView webView = (WebView) ViewBindings.findChildViewById(rootView, R.id.wvPopwin);
        if (webView != null) {
            return new z70(linearLayout, linearLayout, webView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.wvPopwin)));
    }

    @NonNull
    public static z70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48112b;
    }

    @NonNull
    public static z70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.jpush_popwin_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
