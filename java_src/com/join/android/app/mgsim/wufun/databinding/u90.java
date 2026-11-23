package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.pad.HMButtonView;
import com.join.kotlin.module.hmcloud.pad.HMKeyboardView;

/* JADX INFO: loaded from: classes4.dex */
public final class u90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f45612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final HMButtonView f45614f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final HMButtonView f45615g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final HMButtonView f45616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final HMKeyboardView f45617i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f45618j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45619k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f45620l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f45621m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f45622n;

    private u90(@NonNull ConstraintLayout rootView, @NonNull ImageView arr, @NonNull ImageView close, @NonNull LinearLayout combineKeys, @NonNull HMButtonView k10, @NonNull HMButtonView k11, @NonNull HMButtonView k12, @NonNull HMKeyboardView keyboard, @NonNull ConstraintLayout menuBar, @NonNull LinearLayout menuMain, @NonNull ImageView plus1, @NonNull ImageView plus2, @NonNull TextView save) {
        this.f45610b = rootView;
        this.f45611c = arr;
        this.f45612d = close;
        this.f45613e = combineKeys;
        this.f45614f = k10;
        this.f45615g = k11;
        this.f45616h = k12;
        this.f45617i = keyboard;
        this.f45618j = menuBar;
        this.f45619k = menuMain;
        this.f45620l = plus1;
        this.f45621m = plus2;
        this.f45622n = save;
    }

    @NonNull
    public static u90 bind(@NonNull View rootView) {
        int i10 = R.id.arr;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arr);
        if (imageView != null) {
            i10 = R.id.close;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
            if (imageView2 != null) {
                i10 = R.id.combine_keys;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.combine_keys);
                if (linearLayout != null) {
                    i10 = R.id.f35465k1;
                    HMButtonView hMButtonView = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35465k1);
                    if (hMButtonView != null) {
                        i10 = R.id.f35466k2;
                        HMButtonView hMButtonView2 = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35466k2);
                        if (hMButtonView2 != null) {
                            i10 = R.id.f35467k3;
                            HMButtonView hMButtonView3 = (HMButtonView) ViewBindings.findChildViewById(rootView, R.id.f35467k3);
                            if (hMButtonView3 != null) {
                                i10 = R.id.keyboard;
                                HMKeyboardView hMKeyboardView = (HMKeyboardView) ViewBindings.findChildViewById(rootView, R.id.keyboard);
                                if (hMKeyboardView != null) {
                                    i10 = R.id.menu_bar;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.menu_bar);
                                    if (constraintLayout != null) {
                                        i10 = R.id.menu_main;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.menu_main);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.plus1;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.plus1);
                                            if (imageView3 != null) {
                                                i10 = R.id.plus2;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.plus2);
                                                if (imageView4 != null) {
                                                    i10 = R.id.save;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.save);
                                                    if (textView != null) {
                                                        return new u90((ConstraintLayout) rootView, imageView, imageView2, linearLayout, hMButtonView, hMButtonView2, hMButtonView3, hMKeyboardView, constraintLayout, linearLayout2, imageView3, imageView4, textView);
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
    public static u90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45610b;
    }

    @NonNull
    public static u90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_keyboard_add_combine, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
