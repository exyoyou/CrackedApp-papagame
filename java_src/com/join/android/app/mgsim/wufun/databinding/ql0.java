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
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class ql0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f43889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f43890d;

    private ql0(@NonNull ConstraintLayout rootView, @NonNull PtrClassicFrameLayout ptr, @NonNull XQuickRecyclerView recyclerView) {
        this.f43888b = rootView;
        this.f43889c = ptr;
        this.f43890d = recyclerView;
    }

    @NonNull
    public static ql0 bind(@NonNull View rootView) {
        int i10 = R.id.ptr;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.ptr);
        if (ptrClassicFrameLayout != null) {
            i10 = R.id.recyclerView;
            XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
            if (xQuickRecyclerView != null) {
                return new ql0((ConstraintLayout) rootView, ptrClassicFrameLayout, xQuickRecyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ql0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43888b;
    }

    @NonNull
    public static ql0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v4_sub_home, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
