package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f40235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f40236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final WebView f40237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40238f;

    private jh(@NonNull LinearLayout rootView, @NonNull Button dialogButtonCancel, @NonNull Button dialogButtonOk, @NonNull WebView info, @NonNull TextView tipTitle) {
        this.f40234b = rootView;
        this.f40235c = dialogButtonCancel;
        this.f40236d = dialogButtonOk;
        this.f40237e = info;
        this.f40238f = tipTitle;
    }

    @NonNull
    public static jh bind(@NonNull View rootView) {
        int i10 = R.id.dialog_button_cancel;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_cancel);
        if (button != null) {
            i10 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.dialog_button_ok);
            if (button2 != null) {
                i10 = R.id.info;
                WebView webView = (WebView) ViewBindings.findChildViewById(rootView, R.id.info);
                if (webView != null) {
                    i10 = R.id.tip_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tip_title);
                    if (textView != null) {
                        return new jh((LinearLayout) rootView, button, button2, webView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40234b;
    }

    @NonNull
    public static jh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_permiss_customer_alert, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
