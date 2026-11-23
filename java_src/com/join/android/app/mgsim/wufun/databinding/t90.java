package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.pad.HMKeyboardView;

/* JADX INFO: loaded from: classes4.dex */
public final class t90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HMKeyboardView f45162c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f45163d;

    private t90(@NonNull ConstraintLayout rootView, @NonNull HMKeyboardView keyboard, @NonNull View space) {
        this.f45161b = rootView;
        this.f45162c = keyboard;
        this.f45163d = space;
    }

    @NonNull
    public static t90 bind(@NonNull View rootView) {
        int i10 = R.id.keyboard;
        HMKeyboardView hMKeyboardView = (HMKeyboardView) ViewBindings.findChildViewById(rootView, R.id.keyboard);
        if (hMKeyboardView != null) {
            i10 = R.id.space;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.space);
            if (viewFindChildViewById != null) {
                return new t90((ConstraintLayout) rootView, hMKeyboardView, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45161b;
    }

    @NonNull
    public static t90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_keyboard_add, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
