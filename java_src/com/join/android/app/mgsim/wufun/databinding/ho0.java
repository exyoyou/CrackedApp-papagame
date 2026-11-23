package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class ho0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f39446c;

    private ho0(@NonNull LinearLayout rootView, @NonNull XQuickRecyclerView recycleView) {
        this.f39445b = rootView;
        this.f39446c = recycleView;
    }

    @NonNull
    public static ho0 bind(@NonNull View rootView) {
        XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recycleView);
        if (xQuickRecyclerView != null) {
            return new ho0((LinearLayout) rootView, xQuickRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.recycleView)));
    }

    @NonNull
    public static ho0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39445b;
    }

    @NonNull
    public static ho0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.net_game_category_inner_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
