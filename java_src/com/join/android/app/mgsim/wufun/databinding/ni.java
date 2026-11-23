package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;

/* JADX INFO: loaded from: classes4.dex */
public final class ni implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f42337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SwipeRefresh f42338d;

    private ni(@NonNull LinearLayout rootView, @NonNull XRecyclerView recyclerView, @NonNull SwipeRefresh refreshx) {
        this.f42336b = rootView;
        this.f42337c = recyclerView;
        this.f42338d = refreshx;
    }

    @NonNull
    public static ni bind(@NonNull View rootView) {
        int i10 = R.id.recyclerView;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
        if (xRecyclerView != null) {
            i10 = R.id.refreshx;
            SwipeRefresh swipeRefresh = (SwipeRefresh) ViewBindings.findChildViewById(rootView, R.id.refreshx);
            if (swipeRefresh != null) {
                return new ni((LinearLayout) rootView, xRecyclerView, swipeRefresh);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ni inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42336b;
    }

    @NonNull
    public static ni inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.discovery_tab_fragment_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
