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
import com.join.kotlin.module.hmcloud.pad.HMOpView;

/* JADX INFO: loaded from: classes4.dex */
public final class z90 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HMOpView f48141c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final y90 f48142d;

    private z90(@NonNull ConstraintLayout rootView, @NonNull HMOpView opContainer, @NonNull y90 opMenu) {
        this.f48140b = rootView;
        this.f48141c = opContainer;
        this.f48142d = opMenu;
    }

    @NonNull
    public static z90 bind(@NonNull View rootView) {
        int i10 = R.id.op_container;
        HMOpView hMOpView = (HMOpView) ViewBindings.findChildViewById(rootView, R.id.op_container);
        if (hMOpView != null) {
            i10 = R.id.op_menu;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.op_menu);
            if (viewFindChildViewById != null) {
                return new z90((ConstraintLayout) rootView, hMOpView, y90.bind(viewFindChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static z90 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48140b;
    }

    @NonNull
    public static z90 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_op_edit_pad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
