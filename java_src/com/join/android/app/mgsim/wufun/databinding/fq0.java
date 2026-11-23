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
import com.join.mgps.customview.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class fq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f38499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HorizontalRecyclerView f38501d;

    private fq0(@NonNull FrameLayout rootView, @NonNull FrameLayout flRoot, @NonNull HorizontalRecyclerView recyclerView) {
        this.f38499b = rootView;
        this.f38500c = flRoot;
        this.f38501d = recyclerView;
    }

    @NonNull
    public static fq0 bind(@NonNull View rootView) {
        FrameLayout frameLayout = (FrameLayout) rootView;
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
        if (horizontalRecyclerView != null) {
            return new fq0(frameLayout, frameLayout, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.recyclerView)));
    }

    @NonNull
    public static fq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f38499b;
    }

    @NonNull
    public static fq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_item_game_news, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
