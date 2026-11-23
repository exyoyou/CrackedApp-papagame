package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.widget.indicator.UIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class hb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f39266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final UIndicator f39267c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39268d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f39269e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerView f39270f;

    private hb0(@NonNull RelativeLayout rootView, @NonNull UIndicator indicView, @NonNull LinearLayout llEntry, @NonNull RelativeLayout rlRoot, @NonNull RecyclerView rvList) {
        this.f39266b = rootView;
        this.f39267c = indicView;
        this.f39268d = llEntry;
        this.f39269e = rlRoot;
        this.f39270f = rvList;
    }

    @NonNull
    public static hb0 bind(@NonNull View rootView) {
        int i10 = R.id.indic_view;
        UIndicator uIndicator = (UIndicator) ViewBindings.findChildViewById(rootView, R.id.indic_view);
        if (uIndicator != null) {
            i10 = R.id.ll_entry;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_entry);
            if (linearLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) rootView;
                i10 = R.id.rv_list;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list);
                if (recyclerView != null) {
                    return new hb0(relativeLayout, uIndicator, linearLayout, relativeLayout, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f39266b;
    }

    @NonNull
    public static hb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_papa_main_home_v4_fast_entry_parent, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
