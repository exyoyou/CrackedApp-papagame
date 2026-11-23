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
import com.join.kotlin.domain.widget.WFTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class n80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final WFTextView f42221c;

    private n80(@NonNull ConstraintLayout rootView, @NonNull WFTextView tabText) {
        this.f42220b = rootView;
        this.f42221c = tabText;
    }

    @NonNull
    public static n80 bind(@NonNull View rootView) {
        WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tabText);
        if (wFTextView != null) {
            return new n80((ConstraintLayout) rootView, wFTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.tabText)));
    }

    @NonNull
    public static n80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42220b;
    }

    @NonNull
    public static n80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_custom_tab_home_new_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
