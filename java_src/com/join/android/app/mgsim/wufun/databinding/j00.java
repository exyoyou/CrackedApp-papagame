package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class j00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f40018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f40019c;

    private j00(@NonNull FrameLayout rootView, @NonNull View vLine) {
        this.f40018b = rootView;
        this.f40019c = vLine;
    }

    @NonNull
    public static j00 bind(@NonNull View rootView) {
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_line);
        if (viewFindChildViewById != null) {
            return new j00((FrameLayout) rootView, viewFindChildViewById);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.v_line)));
    }

    @NonNull
    public static j00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f40018b;
    }

    @NonNull
    public static j00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_divider_h, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
