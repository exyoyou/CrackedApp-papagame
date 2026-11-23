package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.WFTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class r80 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final WFTextView f44261d;

    private r80(@NonNull ConstraintLayout rootView, @NonNull ImageView iv1, @NonNull WFTextView tabText) {
        this.f44259b = rootView;
        this.f44260c = iv1;
        this.f44261d = tabText;
    }

    @NonNull
    public static r80 bind(@NonNull View rootView) {
        int i10 = R.id.iv_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
        if (imageView != null) {
            i10 = R.id.tabText;
            WFTextView wFTextView = (WFTextView) ViewBindings.findChildViewById(rootView, R.id.tabText);
            if (wFTextView != null) {
                return new r80((ConstraintLayout) rootView, imageView, wFTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static r80 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44259b;
    }

    @NonNull
    public static r80 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_custom_tab_nostalgia_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
