package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ho implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f39442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final oi0 f39443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final g60 f39444e;

    private ho(@NonNull ConstraintLayout rootView, @NonNull XQuickRecyclerView rvListData, @NonNull oi0 vNoData, @NonNull g60 vPdView) {
        this.f39441b = rootView;
        this.f39442c = rvListData;
        this.f39443d = vNoData;
        this.f39444e = vPdView;
    }

    @NonNull
    public static ho bind(@NonNull View rootView) {
        int i10 = R.id.rv_list_data;
        XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list_data);
        if (xQuickRecyclerView != null) {
            i10 = R.id.v_no_data;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.v_no_data);
            if (viewFindChildViewById != null) {
                oi0 oi0VarBind = oi0.bind(viewFindChildViewById);
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_pd_view);
                if (viewFindChildViewById2 != null) {
                    return new ho((ConstraintLayout) rootView, xQuickRecyclerView, oi0VarBind, g60.bind(viewFindChildViewById2));
                }
                i10 = R.id.v_pd_view;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ho inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39441b;
    }

    @NonNull
    public static ho inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_search_game_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
