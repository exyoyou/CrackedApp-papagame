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
public final class a40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f35653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Banner f35654c;

    private a40(@NonNull ConstraintLayout rootView, @NonNull Banner banner) {
        this.f35653b = rootView;
        this.f35654c = banner;
    }

    @NonNull
    public static a40 bind(@NonNull View rootView) {
        Banner banner = (Banner) ViewBindings.findChildViewById(rootView, R.id.banner);
        if (banner != null) {
            return new a40((ConstraintLayout) rootView, banner);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.banner)));
    }

    @NonNull
    public static a40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f35653b;
    }

    @NonNull
    public static a40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_my_cloud_game_banner, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
