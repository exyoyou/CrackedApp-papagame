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
import com.youth.banner.Banner;

/* JADX INFO: loaded from: classes4.dex */
public final class eb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Banner f37879c;

    private eb0(@NonNull ConstraintLayout rootView, @NonNull Banner banner) {
        this.f37878b = rootView;
        this.f37879c = banner;
    }

    @NonNull
    public static eb0 bind(@NonNull View rootView) {
        Banner banner = (Banner) ViewBindings.findChildViewById(rootView, R.id.banner);
        if (banner != null) {
            return new eb0((ConstraintLayout) rootView, banner);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.banner)));
    }

    @NonNull
    public static eb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37878b;
    }

    @NonNull
    public static eb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_papa_main_home_v4_banner, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
