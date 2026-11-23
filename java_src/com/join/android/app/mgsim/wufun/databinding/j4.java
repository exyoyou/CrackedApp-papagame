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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class j4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40075c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40076d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40078f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40079g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40080h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40081i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40082j;

    private j4(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView icon, @NonNull ImageView ivClose, @NonNull RelativeLayout rlOptVip, @NonNull TextView tvAdTip, @NonNull TextView tvAdVipTip, @NonNull TextView tvOptLaunch, @NonNull TextView tvOptViewAd, @NonNull TextView tvOptVip) {
        this.f40074b = rootView;
        this.f40075c = icon;
        this.f40076d = ivClose;
        this.f40077e = rlOptVip;
        this.f40078f = tvAdTip;
        this.f40079g = tvAdVipTip;
        this.f40080h = tvOptLaunch;
        this.f40081i = tvOptViewAd;
        this.f40082j = tvOptVip;
    }

    @NonNull
    public static j4 bind(@NonNull View rootView) {
        int i10 = R.id.icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
        if (simpleDraweeView != null) {
            i10 = R.id.iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
            if (imageView != null) {
                i10 = R.id.rl_opt_vip;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_opt_vip);
                if (relativeLayout != null) {
                    i10 = R.id.tv_ad_tip;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_ad_tip);
                    if (textView != null) {
                        i10 = R.id.tv_ad_vip_tip;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_ad_vip_tip);
                        if (textView2 != null) {
                            i10 = R.id.tv_opt_launch;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_launch);
                            if (textView3 != null) {
                                i10 = R.id.tv_opt_view_ad;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_view_ad);
                                if (textView4 != null) {
                                    i10 = R.id.tv_opt_vip;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_opt_vip);
                                    if (textView5 != null) {
                                        return new j4((LinearLayout) rootView, simpleDraweeView, imageView, relativeLayout, textView, textView2, textView3, textView4, textView5);
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
    public static j4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40074b;
    }

    @NonNull
    public static j4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_reward_ad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
