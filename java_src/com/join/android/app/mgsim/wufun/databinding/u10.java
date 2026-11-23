package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.WFTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class u10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45521c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ProgressBar f45522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45524f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final WFTextView f45525g;

    private u10(@NonNull ConstraintLayout rootView, @NonNull LinearLayout layoutReceiveAction, @NonNull ProgressBar pbGiftProgress, @NonNull TextView tvGiftContent, @NonNull TextView tvGiftTitle, @NonNull WFTextView tvReceive) {
        this.f45520b = rootView;
        this.f45521c = layoutReceiveAction;
        this.f45522d = pbGiftProgress;
        this.f45523e = tvGiftContent;
        this.f45524f = tvGiftTitle;
        this.f45525g = tvReceive;
    }

    @NonNull
    public static u10 bind(@NonNull View rootView) {
        int i10 = R.id.layoutReceiveAction;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutReceiveAction);
        if (linearLayout != null) {
            i10 = R.id.pbGiftProgress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.pbGiftProgress);
            if (progressBar != null) {
                i10 = R.id.tvGiftContent;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGiftContent);
                if (textView != null) {
                    i10 = R.id.tvGiftTitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGiftTitle);
                    if (textView2 != null) {
                        i10 = R.id.tvReceive;
                        WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tvReceive);
                        if (wFTextView != null) {
                            return new u10((ConstraintLayout) rootView, linearLayout, progressBar, textView, textView2, wFTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static u10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45520b;
    }

    @NonNull
    public static u10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_item_gift, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
