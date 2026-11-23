package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class eo implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f38031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38032d;

    private eo(@NonNull RelativeLayout rootView, @NonNull XRecyclerView classifyListView, @NonNull RelativeLayout rootRl) {
        this.f38030b = rootView;
        this.f38031c = classifyListView;
        this.f38032d = rootRl;
    }

    @NonNull
    public static eo bind(@NonNull View rootView) {
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.classifyListView);
        if (xRecyclerView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.classifyListView)));
        }
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        return new eo(relativeLayout, xRecyclerView, relativeLayout);
    }

    @NonNull
    public static eo inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38030b;
    }

    @NonNull
    public static eo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_rank_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
