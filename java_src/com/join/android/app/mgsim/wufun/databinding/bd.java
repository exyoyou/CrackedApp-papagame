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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ObservableWebView;

/* JADX INFO: loaded from: classes4.dex */
public final class bd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ObservableWebView f36342e;

    private bd(@NonNull LinearLayout rootView, @NonNull TextView textView, @NonNull LinearLayout tipsLayout, @NonNull ObservableWebView webView) {
        this.f36339b = rootView;
        this.f36340c = textView;
        this.f36341d = tipsLayout;
        this.f36342e = webView;
    }

    @NonNull
    public static bd bind(@NonNull View rootView) {
        int i10 = R.id.textView;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
        if (textView != null) {
            i10 = R.id.tipsLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
            if (linearLayout != null) {
                i10 = R.id.webView;
                ObservableWebView observableWebView = (ObservableWebView) ViewBindings.findChildViewById(rootView, R.id.webView);
                if (observableWebView != null) {
                    return new bd((LinearLayout) rootView, textView, linearLayout, observableWebView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36339b;
    }

    @NonNull
    public static bd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detail_simple_info_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
