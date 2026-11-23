package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.WFTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class vf implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Barrier f46223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Barrier f46224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CheckBox f46225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final EditText f46226f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final EditText f46227g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final EditText f46228h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f46229i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f46230j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f46231k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f46232l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46233m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f46234n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f46235o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f46236p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final WFTextView f46237q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f46238r;

    private vf(@NonNull RelativeLayout rootView, @NonNull Barrier barrierLoginBottom, @NonNull Barrier barrierNormalInput, @NonNull CheckBox cbAgreement, @NonNull EditText etPassword, @NonNull EditText etPhone, @NonNull EditText etVerifyCode, @NonNull ImageView ivClose, @NonNull ImageView ivLogo, @NonNull ImageView ivSwitchNormal, @NonNull ImageView ivSwitchOnekey, @NonNull ConstraintLayout layoutVerifyCode, @NonNull TextView tvAgreement, @NonNull TextView tvAutoRegisterTip, @NonNull TextView tvGetCode, @NonNull WFTextView tvLogin, @NonNull TextView tvPhoneMask) {
        this.f46222b = rootView;
        this.f46223c = barrierLoginBottom;
        this.f46224d = barrierNormalInput;
        this.f46225e = cbAgreement;
        this.f46226f = etPassword;
        this.f46227g = etPhone;
        this.f46228h = etVerifyCode;
        this.f46229i = ivClose;
        this.f46230j = ivLogo;
        this.f46231k = ivSwitchNormal;
        this.f46232l = ivSwitchOnekey;
        this.f46233m = layoutVerifyCode;
        this.f46234n = tvAgreement;
        this.f46235o = tvAutoRegisterTip;
        this.f46236p = tvGetCode;
        this.f46237q = tvLogin;
        this.f46238r = tvPhoneMask;
    }

    @NonNull
    public static vf bind(@NonNull View rootView) {
        int i10 = R.id.barrier_login_bottom;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(rootView, R.id.barrier_login_bottom);
        if (barrier != null) {
            i10 = R.id.barrier_normal_input;
            Barrier barrier2 = (Barrier) ViewBindings.findChildViewById(rootView, R.id.barrier_normal_input);
            if (barrier2 != null) {
                i10 = R.id.cb_agreement;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.cb_agreement);
                if (checkBox != null) {
                    i10 = R.id.et_password;
                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_password);
                    if (editText != null) {
                        i10 = R.id.et_phone;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_phone);
                        if (editText2 != null) {
                            i10 = R.id.et_verify_code;
                            EditText editText3 = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_verify_code);
                            if (editText3 != null) {
                                i10 = R.id.iv_close;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                                if (imageView != null) {
                                    i10 = R.id.iv_logo;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_logo);
                                    if (imageView2 != null) {
                                        i10 = R.id.iv_switch_normal;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_switch_normal);
                                        if (imageView3 != null) {
                                            i10 = R.id.iv_switch_onekey;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_switch_onekey);
                                            if (imageView4 != null) {
                                                i10 = R.id.layout_verify_code;
                                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.layout_verify_code);
                                                if (constraintLayout != null) {
                                                    i10 = R.id.tv_agreement;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_agreement);
                                                    if (textView != null) {
                                                        i10 = R.id.tv_auto_register_tip;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_auto_register_tip);
                                                        if (textView2 != null) {
                                                            i10 = R.id.tv_get_code;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_get_code);
                                                            if (textView3 != null) {
                                                                i10 = R.id.tv_login;
                                                                WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tv_login);
                                                                if (wFTextView != null) {
                                                                    i10 = R.id.tv_phone_mask;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_phone_mask);
                                                                    if (textView4 != null) {
                                                                        return new vf((RelativeLayout) rootView, barrier, barrier2, checkBox, editText, editText2, editText3, imageView, imageView2, imageView3, imageView4, constraintLayout, textView, textView2, textView3, wFTextView, textView4);
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
    public static vf inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46222b;
    }

    @NonNull
    public static vf inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_game_detail_gift_login, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
