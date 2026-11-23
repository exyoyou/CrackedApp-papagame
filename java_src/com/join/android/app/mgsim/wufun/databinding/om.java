package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class om implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42959f;

    private om(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clTop, @NonNull ImageView ivCommon, @NonNull ImageView ivOp, @NonNull FrameLayout main) {
        this.f42955b = rootView;
        this.f42956c = clTop;
        this.f42957d = ivCommon;
        this.f42958e = ivOp;
        this.f42959f = main;
    }

    @NonNull
    public static om bind(@NonNull View rootView) {
        int i10 = R.id.cl_top;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.cl_top);
        if (constraintLayout != null) {
            i10 = R.id.ivCommon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivCommon);
            if (imageView != null) {
                i10 = R.id.ivOp;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivOp);
                if (imageView2 != null) {
                    i10 = R.id.main;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                    if (frameLayout != null) {
                        return new om((ConstraintLayout) rootView, constraintLayout, imageView, imageView2, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static om inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42955b;
    }

    @NonNull
    public static om inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_hm_settings, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
