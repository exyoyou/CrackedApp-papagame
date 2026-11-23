package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class n90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42230g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f42231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f42232i;

    private n90(@NonNull ConstraintLayout rootView, @NonNull ImageView bg, @NonNull ConstraintLayout bottomBlock, @NonNull ConstraintLayout button, @NonNull ConstraintLayout custom, @NonNull ImageView icon, @NonNull AppCompatTextView name, @NonNull AppCompatTextView nickname) {
        this.f42225b = rootView;
        this.f42226c = bg;
        this.f42227d = bottomBlock;
        this.f42228e = button;
        this.f42229f = custom;
        this.f42230g = icon;
        this.f42231h = name;
        this.f42232i = nickname;
    }

    @NonNull
    public static n90 bind(@NonNull View rootView) {
        int i10 = R.id.bg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bg);
        if (imageView != null) {
            i10 = R.id.bottom_block;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.bottom_block);
            if (constraintLayout != null) {
                ConstraintLayout constraintLayout2 = (ConstraintLayout) rootView;
                i10 = R.id.custom;
                ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.custom);
                if (constraintLayout3 != null) {
                    i10 = R.id.icon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
                    if (imageView2 != null) {
                        i10 = R.id.name;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(rootView, R.id.name);
                        if (appCompatTextView != null) {
                            i10 = R.id.nickname;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(rootView, R.id.nickname);
                            if (appCompatTextView2 != null) {
                                return new n90(constraintLayout2, imageView, constraintLayout, constraintLayout2, constraintLayout3, imageView2, appCompatTextView, appCompatTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static n90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42225b;
    }

    @NonNull
    public static n90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_key_button, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
