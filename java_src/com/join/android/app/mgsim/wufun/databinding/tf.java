package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.WFTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class tf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f45205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final WFTextView f45208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45209f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45210g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45211h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f45212i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45213j;

    private tf(@NonNull FrameLayout rootView, @NonNull ImageView ivClose, @NonNull TextView tvAmount, @NonNull WFTextView tvEnterGame, @NonNull TextView tvLabelY, @NonNull TextView tvUsageStep1, @NonNull TextView tvUsageStep2, @NonNull TextView tvUsageStep3, @NonNull TextView tvUsageTitle) {
        this.f45205b = rootView;
        this.f45206c = ivClose;
        this.f45207d = tvAmount;
        this.f45208e = tvEnterGame;
        this.f45209f = tvLabelY;
        this.f45210g = tvUsageStep1;
        this.f45211h = tvUsageStep2;
        this.f45212i = tvUsageStep3;
        this.f45213j = tvUsageTitle;
    }

    @NonNull
    public static tf bind(@NonNull View rootView) {
        int i10 = R.id.ivClose;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivClose);
        if (imageView != null) {
            i10 = R.id.tvAmount;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAmount);
            if (textView != null) {
                i10 = R.id.tvEnterGame;
                WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tvEnterGame);
                if (wFTextView != null) {
                    i10 = R.id.tvLabelY;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvLabelY);
                    if (textView2 != null) {
                        i10 = R.id.tvUsageStep1;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUsageStep1);
                        if (textView3 != null) {
                            i10 = R.id.tvUsageStep2;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUsageStep2);
                            if (textView4 != null) {
                                i10 = R.id.tvUsageStep3;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUsageStep3);
                                if (textView5 != null) {
                                    i10 = R.id.tvUsageTitle;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvUsageTitle);
                                    if (textView6 != null) {
                                        return new tf((FrameLayout) rootView, imageView, textView, wFTextView, textView2, textView3, textView4, textView5, textView6);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static tf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f45205b;
    }

    @NonNull
    public static tf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_game_detail_gift_coupon_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
