package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.NestedScrollWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class na0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f42249c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final NestedScrollWebView f42250d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42251e;

    private na0(@NonNull LinearLayout rootView, @NonNull AppBarLayout appBar, @NonNull NestedScrollWebView nsWebView, @NonNull TextView titleTextview) {
        this.f42248b = rootView;
        this.f42249c = appBar;
        this.f42250d = nsWebView;
        this.f42251e = titleTextview;
    }

    @NonNull
    public static na0 bind(@NonNull View rootView) {
        int i10 = R.id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.app_bar);
        if (appBarLayout != null) {
            i10 = R.id.ns_web_view;
            NestedScrollWebView nestedScrollWebView = (NestedScrollWebView) ViewBindings.findChildViewById(rootView, R.id.ns_web_view);
            if (nestedScrollWebView != null) {
                i10 = R.id.title_textview;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                if (textView != null) {
                    return new na0((LinearLayout) rootView, appBarLayout, nestedScrollWebView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static na0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42248b;
    }

    @NonNull
    public static na0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_introduction_web, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
