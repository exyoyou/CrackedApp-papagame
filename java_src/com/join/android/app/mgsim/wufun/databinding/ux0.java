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
import com.papa91.arc.widget.htmltext.HtmlTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class ux0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f45963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HtmlTextView f45964c;

    private ux0(@NonNull FrameLayout rootView, @NonNull HtmlTextView tvText1) {
        this.f45963b = rootView;
        this.f45964c = tvText1;
    }

    @NonNull
    public static ux0 bind(@NonNull View rootView) {
        HtmlTextView htmlTextView = (HtmlTextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
        if (htmlTextView != null) {
            return new ux0((FrameLayout) rootView, htmlTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.tv_text_1)));
    }

    @NonNull
    public static ux0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f45963b;
    }

    @NonNull
    public static ux0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.view_home_tab_pop, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
