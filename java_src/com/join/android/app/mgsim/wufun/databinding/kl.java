package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class kl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f40841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f40843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f40844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerView f40845f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f40846g;

    private kl(@NonNull ConstraintLayout rootView, @NonNull TextView btnToday, @NonNull CoordinatorLayout clContainer, @NonNull AppBarLayout dailyFindAppBar, @NonNull RecyclerView dateStripRecycler, @NonNull XQuickRecyclerView rvList) {
        this.f40841b = rootView;
        this.f40842c = btnToday;
        this.f40843d = clContainer;
        this.f40844e = dailyFindAppBar;
        this.f40845f = dateStripRecycler;
        this.f40846g = rvList;
    }

    @NonNull
    public static kl bind(@NonNull View rootView) {
        int i10 = R.id.btnToday;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnToday);
        if (textView != null) {
            i10 = R.id.cl_container;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.cl_container);
            if (coordinatorLayout != null) {
                i10 = R.id.dailyFindAppBar;
                AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.dailyFindAppBar);
                if (appBarLayout != null) {
                    i10 = R.id.dateStripRecycler;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.dateStripRecycler);
                    if (recyclerView != null) {
                        i10 = R.id.rv_list;
                        XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list);
                        if (xQuickRecyclerView != null) {
                            return new kl((ConstraintLayout) rootView, textView, coordinatorLayout, appBarLayout, recyclerView, xQuickRecyclerView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f40841b;
    }

    @NonNull
    public static kl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_daily_find_content, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
