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
import com.join.mgps.activity.login.FitImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class sy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FitImageView f45049c;

    private sy0(@NonNull ConstraintLayout rootView, @NonNull FitImageView itemBg) {
        this.f45048b = rootView;
        this.f45049c = itemBg;
    }

    @NonNull
    public static sy0 bind(@NonNull View rootView) {
        FitImageView fitImageView = (FitImageView) ViewBindings.findChildViewById(rootView, R.id.item_bg);
        if (fitImageView != null) {
            return new sy0((ConstraintLayout) rootView, fitImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.item_bg)));
    }

    @NonNull
    public static sy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45048b;
    }

    @NonNull
    public static sy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.wufunlogin_splash_recitem, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
