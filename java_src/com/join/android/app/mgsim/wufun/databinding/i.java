package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class i implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final EditText f39555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f39556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39558f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39559g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39560h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39561i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f39562j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f39563k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f39564l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39565m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f39566n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f39567o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f39568p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f39569q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f39570r;

    private i(@NonNull ConstraintLayout rootView, @NonNull EditText et1, @NonNull EditText et2, @NonNull ImageView iv1, @NonNull ImageView ivBtn1, @NonNull ImageView ivClear, @NonNull TextView tvBtn1, @NonNull TextView tvBtn2, @NonNull TextView tvBtn3, @NonNull TextView tvLabel1, @NonNull TextView tvLabel2, @NonNull TextView tvLabel3, @NonNull TextView tvLabel4, @NonNull TextView tvLabel5, @NonNull TextView tvLabel6, @NonNull TextView tvText1, @NonNull TextView tvText8) {
        this.f39554b = rootView;
        this.f39555c = et1;
        this.f39556d = et2;
        this.f39557e = iv1;
        this.f39558f = ivBtn1;
        this.f39559g = ivClear;
        this.f39560h = tvBtn1;
        this.f39561i = tvBtn2;
        this.f39562j = tvBtn3;
        this.f39563k = tvLabel1;
        this.f39564l = tvLabel2;
        this.f39565m = tvLabel3;
        this.f39566n = tvLabel4;
        this.f39567o = tvLabel5;
        this.f39568p = tvLabel6;
        this.f39569q = tvText1;
        this.f39570r = tvText8;
    }

    @NonNull
    public static i bind(@NonNull View rootView) {
        int i10 = R.id.et_1;
        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_1);
        if (editText != null) {
            i10 = R.id.et_2;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_2);
            if (editText2 != null) {
                i10 = R.id.iv_1;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
                if (imageView != null) {
                    i10 = R.id.iv_btn_1;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_btn_1);
                    if (imageView2 != null) {
                        i10 = R.id.iv_clear;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_clear);
                        if (imageView3 != null) {
                            i10 = R.id.tv_btn_1;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_1);
                            if (textView != null) {
                                i10 = R.id.tv_btn_2;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_2);
                                if (textView2 != null) {
                                    i10 = R.id.tv_btn_3;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_btn_3);
                                    if (textView3 != null) {
                                        i10 = R.id.tv_label_1;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_1);
                                        if (textView4 != null) {
                                            i10 = R.id.tv_label_2;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_2);
                                            if (textView5 != null) {
                                                i10 = R.id.tv_label_3;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_3);
                                                if (textView6 != null) {
                                                    i10 = R.id.tv_label_4;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_4);
                                                    if (textView7 != null) {
                                                        i10 = R.id.tv_label_5;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_5);
                                                        if (textView8 != null) {
                                                            i10 = R.id.tv_label_6;
                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_6);
                                                            if (textView9 != null) {
                                                                i10 = R.id.tv_text_1;
                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                                                if (textView10 != null) {
                                                                    i10 = R.id.tv_text_8;
                                                                    TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_8);
                                                                    if (textView11 != null) {
                                                                        return new i((ConstraintLayout) rootView, editText, editText2, imageView, imageView2, imageView3, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
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
    public static i inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39554b;
    }

    @NonNull
    public static i inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_bind_account, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
