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

/* JADX INFO: loaded from: classes4.dex */
public final class lw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41588d;

    private lw(@NonNull LinearLayout rootView, @NonNull TextView tvPopOpenWeb, @NonNull TextView tvPopReport) {
        this.f41586b = rootView;
        this.f41587c = tvPopOpenWeb;
        this.f41588d = tvPopReport;
    }

    @NonNull
    public static lw bind(@NonNull View rootView) {
        int i10 = R.id.tv_pop_open_web;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_pop_open_web);
        if (textView != null) {
            i10 = R.id.tv_pop_report;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_pop_report);
            if (textView2 != null) {
                return new lw((LinearLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41586b;
    }

    @NonNull
    public static lw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.introduction_comment_bottom_popwin, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
