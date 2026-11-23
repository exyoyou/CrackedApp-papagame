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
import com.join.mgps.customview.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class wc0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HorizontalRecyclerView f46750c;

    private wc0(@NonNull ConstraintLayout rootView, @NonNull HorizontalRecyclerView recyclerview) {
        this.f46749b = rootView;
        this.f46750c = recyclerview;
    }

    @NonNull
    public static wc0 bind(@NonNull View rootView) {
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerview);
        if (horizontalRecyclerView != null) {
            return new wc0((ConstraintLayout) rootView, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.recyclerview)));
    }

    @NonNull
    public static wc0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46749b;
    }

    @NonNull
    public static wc0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_simulator_tag_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
