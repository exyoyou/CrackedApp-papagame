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
public final class l80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final WFTextView f41223c;

    private l80(@NonNull ConstraintLayout rootView, @NonNull WFTextView tabText) {
        this.f41222b = rootView;
        this.f41223c = tabText;
    }

    @NonNull
    public static l80 bind(@NonNull View rootView) {
        WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tabText);
        if (wFTextView != null) {
            return new l80((ConstraintLayout) rootView, wFTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.tabText)));
    }

    @NonNull
    public static l80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41222b;
    }

    @NonNull
    public static l80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_custom_tab_find_rank, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
