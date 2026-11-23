package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NestedWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class e5 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final NestedWebView f37785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37786d;

    private e5(@NonNull RelativeLayout rootView, @NonNull NestedWebView nsView, @NonNull TextView tvHtml) {
        this.f37784b = rootView;
        this.f37785c = nsView;
        this.f37786d = tvHtml;
    }

    @NonNull
    public static e5 bind(@NonNull View rootView) {
        int i10 = R.id.ns_view;
        NestedWebView nestedWebView = (NestedWebView) ViewBindings.findChildViewById(rootView, R.id.ns_view);
        if (nestedWebView != null) {
            i10 = R.id.tv_html;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_html);
            if (textView != null) {
                return new e5((RelativeLayout) rootView, nestedWebView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static e5 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37784b;
    }

    @NonNull
    public static e5 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_test_html, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
