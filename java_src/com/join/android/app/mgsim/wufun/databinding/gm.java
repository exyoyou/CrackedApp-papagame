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
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class gm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f38890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f38892d;

    private gm(@NonNull FrameLayout rootView, @NonNull FrameLayout guideOverlay, @NonNull XQuickRecyclerView rvList) {
        this.f38890b = rootView;
        this.f38891c = guideOverlay;
        this.f38892d = rvList;
    }

    @NonNull
    public static gm bind(@NonNull View rootView) {
        int i10 = R.id.guideOverlay;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.guideOverlay);
        if (frameLayout != null) {
            i10 = R.id.rvList;
            XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvList);
            if (xQuickRecyclerView != null) {
                return new gm((FrameLayout) rootView, frameLayout, xQuickRecyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f38890b;
    }

    @NonNull
    public static gm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_game_detail_gift_tab_content, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
