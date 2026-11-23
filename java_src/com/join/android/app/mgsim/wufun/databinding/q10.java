package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class q10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43621f;

    private q10(@NonNull ConstraintLayout rootView, @NonNull ProgressBar pbGiftProgress, @NonNull TextView tvGiftContent, @NonNull TextView tvGiftTitle, @NonNull TextView tvReceive) {
        this.f43617b = rootView;
        this.f43618c = pbGiftProgress;
        this.f43619d = tvGiftContent;
        this.f43620e = tvGiftTitle;
        this.f43621f = tvReceive;
    }

    @NonNull
    public static q10 bind(@NonNull View rootView) {
        int i10 = R.id.pbGiftProgress;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pbGiftProgress);
        if (progressBar != null) {
            i10 = R.id.tvGiftContent;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGiftContent);
            if (textView != null) {
                i10 = R.id.tvGiftTitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGiftTitle);
                if (textView2 != null) {
                    i10 = R.id.tvReceive;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvReceive);
                    if (textView3 != null) {
                        return new q10((ConstraintLayout) rootView, progressBar, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static q10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43617b;
    }

    @NonNull
    public static q10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_gift, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
