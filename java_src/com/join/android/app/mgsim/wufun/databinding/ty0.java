package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ty0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f45482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45483f;

    private ty0(@NonNull LinearLayout rootView, @NonNull RelativeLayout xlistviewFooterContent, @NonNull TextView xlistviewFooterHintTextview, @NonNull ProgressBar xlistviewFooterProgressbar, @NonNull TextView xlistviewFooterRefreshTextview) {
        this.f45479b = rootView;
        this.f45480c = xlistviewFooterContent;
        this.f45481d = xlistviewFooterHintTextview;
        this.f45482e = xlistviewFooterProgressbar;
        this.f45483f = xlistviewFooterRefreshTextview;
    }

    @NonNull
    public static ty0 bind(@NonNull View rootView) {
        int i10 = R.id.xlistview_footer_content;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.xlistview_footer_content);
        if (relativeLayout != null) {
            i10 = R.id.xlistview_footer_hint_textview;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.xlistview_footer_hint_textview);
            if (textView != null) {
                i10 = R.id.xlistview_footer_progressbar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.xlistview_footer_progressbar);
                if (progressBar != null) {
                    i10 = R.id.xlistview_footer_refresh_textview;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xlistview_footer_refresh_textview);
                    if (textView2 != null) {
                        return new ty0((LinearLayout) rootView, relativeLayout, textView, progressBar, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ty0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45479b;
    }

    @NonNull
    public static ty0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.xlistview_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
