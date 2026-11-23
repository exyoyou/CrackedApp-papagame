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
import com.join.mgps.customview.VipView;

/* JADX INFO: loaded from: classes4.dex */
public final class p20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f43189c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43190d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43192f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43193g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43194h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f43195i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43196j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43197k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f43198l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43199m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f43200n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f43201o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f43202p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f43203q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f43204r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final VipView f43205s;

    private p20(@NonNull LinearLayout rootView, @NonNull View borderView, @NonNull SimpleDraweeView ivBg, @NonNull ImageView ivHaveReady, @NonNull TextView ivOutDevice, @NonNull TextView ivPcDevice, @NonNull ImageView ivProficiencyLevel, @NonNull ImageView ivState, @NonNull LinearLayout llOutDevice, @NonNull LinearLayout llState, @NonNull View mDefaultBg, @NonNull RelativeLayout rlTop, @NonNull TextView tvDelayTime, @NonNull TextView tvName, @NonNull TextView tvNickName, @NonNull TextView tvP, @NonNull TextView tvState, @NonNull VipView vipView) {
        this.f43188b = rootView;
        this.f43189c = borderView;
        this.f43190d = ivBg;
        this.f43191e = ivHaveReady;
        this.f43192f = ivOutDevice;
        this.f43193g = ivPcDevice;
        this.f43194h = ivProficiencyLevel;
        this.f43195i = ivState;
        this.f43196j = llOutDevice;
        this.f43197k = llState;
        this.f43198l = mDefaultBg;
        this.f43199m = rlTop;
        this.f43200n = tvDelayTime;
        this.f43201o = tvName;
        this.f43202p = tvNickName;
        this.f43203q = tvP;
        this.f43204r = tvState;
        this.f43205s = vipView;
    }

    @NonNull
    public static p20 bind(@NonNull View rootView) {
        int i10 = R.id.borderView;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.borderView);
        if (viewFindChildViewById != null) {
            i10 = R.id.iv_bg;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_bg);
            if (simpleDraweeView != null) {
                i10 = R.id.iv_haveReady;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_haveReady);
                if (imageView != null) {
                    i10 = R.id.iv_out_device;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.iv_out_device);
                    if (textView != null) {
                        i10 = R.id.iv_pc_device;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.iv_pc_device);
                        if (textView2 != null) {
                            i10 = R.id.ivProficiencyLevel;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivProficiencyLevel);
                            if (imageView2 != null) {
                                i10 = R.id.iv_state;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_state);
                                if (imageView3 != null) {
                                    i10 = R.id.ll_out_device;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_out_device);
                                    if (linearLayout != null) {
                                        i10 = R.id.ll_state;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_state);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.mDefaultBg;
                                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.mDefaultBg);
                                            if (viewFindChildViewById2 != null) {
                                                i10 = R.id.rl_top;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_top);
                                                if (relativeLayout != null) {
                                                    i10 = R.id.tv_delay_time;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_delay_time);
                                                    if (textView3 != null) {
                                                        i10 = R.id.tv_name;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_name);
                                                        if (textView4 != null) {
                                                            i10 = R.id.tv_nick_name;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_nick_name);
                                                            if (textView5 != null) {
                                                                i10 = R.id.tv_p;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_p);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.tv_state;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_state);
                                                                    if (textView7 != null) {
                                                                        i10 = R.id.vipView;
                                                                        VipView vipView = (VipView) ViewBindings.findChildViewById(rootView, R.id.vipView);
                                                                        if (vipView != null) {
                                                                            return new p20((LinearLayout) rootView, viewFindChildViewById, simpleDraweeView, imageView, textView, textView2, imageView2, imageView3, linearLayout, linearLayout2, viewFindChildViewById2, relativeLayout, textView3, textView4, textView5, textView6, textView7, vipView);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
    public static p20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43188b;
    }

    @NonNull
    public static p20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_room_player_info, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
