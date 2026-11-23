package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zh implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f48237f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f48239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f48240i;

    private zh(@NonNull LinearLayout rootView, @NonNull ImageView icon, @NonNull ImageView ivClose, @NonNull RelativeLayout rlOptViewAd, @NonNull TextView tvAdTip, @NonNull TextView tvOptView, @NonNull TextView tvOptVip, @NonNull TextView tvViewAdLabel) {
        this.f48233b = rootView;
        this.f48234c = icon;
        this.f48235d = ivClose;
        this.f48236e = rlOptViewAd;
        this.f48237f = tvAdTip;
        this.f48238g = tvOptView;
        this.f48239h = tvOptVip;
        this.f48240i = tvViewAdLabel;
    }

    @NonNull
    public static zh bind(@NonNull View rootView) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
        if (imageView != null) {
            i10 = R.id.iv_close;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (imageView2 != null) {
                i10 = R.id.rl_opt_view_ad;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_opt_view_ad);
                if (relativeLayout != null) {
                    i10 = R.id.tv_ad_tip;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_ad_tip);
                    if (textView != null) {
                        i10 = R.id.tv_opt_view;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_view);
                        if (textView2 != null) {
                            i10 = R.id.tv_opt_vip;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_vip);
                            if (textView3 != null) {
                                i10 = R.id.tv_view_ad_label;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_view_ad_label);
                                if (textView4 != null) {
                                    return new zh((LinearLayout) rootView, imageView, imageView2, relativeLayout, textView, textView2, textView3, textView4);
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
    public static zh inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48233b;
    }

    @NonNull
    public static zh inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_stick_ad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
