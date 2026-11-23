package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NestedScrollWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class ma0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final NestedScrollWebView f41813c;

    private ma0(@NonNull LinearLayout rootView, @NonNull NestedScrollWebView nsWebView) {
        this.f41812b = rootView;
        this.f41813c = nsWebView;
    }

    @NonNull
    public static ma0 bind(@NonNull View rootView) {
        NestedScrollWebView nestedScrollWebView = (NestedScrollWebView) ViewBindings.findChildViewById(rootView, R.id.ns_web_view);
        if (nestedScrollWebView != null) {
            return new ma0((LinearLayout) rootView, nestedScrollWebView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.ns_web_view)));
    }

    @NonNull
    public static ma0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41812b;
    }

    @NonNull
    public static ma0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_introduction_video, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
