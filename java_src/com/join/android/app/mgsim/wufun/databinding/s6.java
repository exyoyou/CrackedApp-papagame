package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadMoreRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class s6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f44661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LoadMoreRecyclerView f44662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SwipeRefreshLayout f44663d;

    private s6(@NonNull FrameLayout rootView, @NonNull LoadMoreRecyclerView recyclerView, @NonNull SwipeRefreshLayout refreshLayout) {
        this.f44661b = rootView;
        this.f44662c = recyclerView;
        this.f44663d = refreshLayout;
    }

    @NonNull
    public static s6 bind(@NonNull View rootView) {
        int i10 = R.id.recycler_view;
        LoadMoreRecyclerView loadMoreRecyclerView = (LoadMoreRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycler_view);
        if (loadMoreRecyclerView != null) {
            i10 = R.id.refresh_layout;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(rootView, R.id.refresh_layout);
            if (swipeRefreshLayout != null) {
                return new s6((FrameLayout) rootView, loadMoreRecyclerView, swipeRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static s6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f44661b;
    }

    @NonNull
    public static s6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.atestfragment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
