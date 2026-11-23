package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
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
public final class oe0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CheckBox f42827f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42828g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42829h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f42830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42831j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f42832k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42833l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f42834m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42835n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42836o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42837p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final EditText f42838q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f42839r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f42840s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f42841t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42842u;

    private oe0(@NonNull RelativeLayout rootView, @NonNull ImageView back, @NonNull LinearLayout cancle, @NonNull TextView cancleLogin, @NonNull CheckBox checkBox, @NonNull ImageView clear, @NonNull ImageView ivTip, @NonNull ImageView loginQQ, @NonNull LinearLayout loginQQLayout, @NonNull ImageView loginWechat, @NonNull LinearLayout loginWechatLayout, @NonNull ImageView loginWeibo, @NonNull LinearLayout loginWeiboLayout, @NonNull TextView nextStep, @NonNull LinearLayout otherLogin, @NonNull EditText phoneNumber, @NonNull TextView shengming, @NonNull TextView title, @NonNull TextView toOtherLogin, @NonNull TextView xieyi) {
        this.f42823b = rootView;
        this.f42824c = back;
        this.f42825d = cancle;
        this.f42826e = cancleLogin;
        this.f42827f = checkBox;
        this.f42828g = clear;
        this.f42829h = ivTip;
        this.f42830i = loginQQ;
        this.f42831j = loginQQLayout;
        this.f42832k = loginWechat;
        this.f42833l = loginWechatLayout;
        this.f42834m = loginWeibo;
        this.f42835n = loginWeiboLayout;
        this.f42836o = nextStep;
        this.f42837p = otherLogin;
        this.f42838q = phoneNumber;
        this.f42839r = shengming;
        this.f42840s = title;
        this.f42841t = toOtherLogin;
        this.f42842u = xieyi;
    }

    @NonNull
    public static oe0 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.cancle;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.cancle);
            if (linearLayout != null) {
                i10 = R.id.cancleLogin;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancleLogin);
                if (textView != null) {
                    i10 = R.id.checkBox;
                    CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.checkBox);
                    if (checkBox != null) {
                        i10 = R.id.clear;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.clear);
                        if (imageView2 != null) {
                            i10 = R.id.iv_tip;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_tip);
                            if (imageView3 != null) {
                                i10 = R.id.loginQQ;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.loginQQ);
                                if (imageView4 != null) {
                                    i10 = R.id.loginQQLayout;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loginQQLayout);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.loginWechat;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.loginWechat);
                                        if (imageView5 != null) {
                                            i10 = R.id.loginWechatLayout;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loginWechatLayout);
                                            if (linearLayout3 != null) {
                                                i10 = R.id.loginWeibo;
                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.loginWeibo);
                                                if (imageView6 != null) {
                                                    i10 = R.id.loginWeiboLayout;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loginWeiboLayout);
                                                    if (linearLayout4 != null) {
                                                        i10 = R.id.nextStep;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nextStep);
                                                        if (textView2 != null) {
                                                            i10 = R.id.otherLogin;
                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.otherLogin);
                                                            if (linearLayout5 != null) {
                                                                i10 = R.id.phoneNumber;
                                                                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.phoneNumber);
                                                                if (editText != null) {
                                                                    i10 = R.id.shengming;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shengming);
                                                                    if (textView3 != null) {
                                                                        i10 = R.id.title;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                        if (textView4 != null) {
                                                                            i10 = R.id.toOtherLogin;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.toOtherLogin);
                                                                            if (textView5 != null) {
                                                                                i10 = R.id.xieyi;
                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.xieyi);
                                                                                if (textView6 != null) {
                                                                                    return new oe0((RelativeLayout) rootView, imageView, linearLayout, textView, checkBox, imageView2, imageView3, imageView4, linearLayout2, imageView5, linearLayout3, imageView6, linearLayout4, textView2, linearLayout5, editText, textView3, textView4, textView5, textView6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static oe0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42823b;
    }

    @NonNull
    public static oe0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.loginmain_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
