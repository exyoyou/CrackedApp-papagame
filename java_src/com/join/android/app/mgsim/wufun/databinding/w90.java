package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.pad.HMKeyboardView;
import com.join.kotlin.module.hmcloud.pad.HMOpView;

/* JADX INFO: loaded from: classes4.dex */
public final class w90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46692d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final HMKeyboardView f46693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46694f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46695g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46696h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46697i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46698j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f46699k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final HMOpView f46700l;

    private w90(@NonNull ConstraintLayout rootView, @NonNull FrameLayout btnKeyboard, @NonNull FrameLayout btnSettings, @NonNull HMKeyboardView keyboard, @NonNull ConstraintLayout keyboardBlock, @NonNull TextView latency, @NonNull ConstraintLayout latencyBlock, @NonNull TextView loss, @NonNull FrameLayout main, @NonNull ConstraintLayout menuLayer, @NonNull HMOpView opContainer) {
        this.f46690b = rootView;
        this.f46691c = btnKeyboard;
        this.f46692d = btnSettings;
        this.f46693e = keyboard;
        this.f46694f = keyboardBlock;
        this.f46695g = latency;
        this.f46696h = latencyBlock;
        this.f46697i = loss;
        this.f46698j = main;
        this.f46699k = menuLayer;
        this.f46700l = opContainer;
    }

    @NonNull
    public static w90 bind(@NonNull View rootView) {
        int i10 = R.id.btn_keyboard;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.btn_keyboard);
        if (frameLayout != null) {
            i10 = R.id.btn_settings;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.btn_settings);
            if (frameLayout2 != null) {
                i10 = R.id.keyboard;
                HMKeyboardView hMKeyboardView = (HMKeyboardView) ViewBindings.findChildViewById(rootView, R.id.keyboard);
                if (hMKeyboardView != null) {
                    i10 = R.id.keyboard_block;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.keyboard_block);
                    if (constraintLayout != null) {
                        i10 = R.id.latency;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.latency);
                        if (textView != null) {
                            i10 = R.id.latency_block;
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.latency_block);
                            if (constraintLayout2 != null) {
                                i10 = R.id.loss;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loss);
                                if (textView2 != null) {
                                    i10 = R.id.main;
                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                    if (frameLayout3 != null) {
                                        ConstraintLayout constraintLayout3 = (ConstraintLayout) rootView;
                                        i10 = R.id.op_container;
                                        HMOpView hMOpView = (HMOpView) ViewBindings.findChildViewById(rootView, R.id.op_container);
                                        if (hMOpView != null) {
                                            return new w90(constraintLayout3, frameLayout, frameLayout2, hMKeyboardView, constraintLayout, textView, constraintLayout2, textView2, frameLayout3, constraintLayout3, hMOpView);
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
    public static w90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46690b;
    }

    @NonNull
    public static w90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_menu_holder, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
