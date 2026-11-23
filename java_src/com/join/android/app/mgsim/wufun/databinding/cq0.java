package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class cq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HorizontalRecyclerView f37060c;

    private cq0(@NonNull RelativeLayout rootView, @NonNull HorizontalRecyclerView hrecyclerview) {
        this.f37059b = rootView;
        this.f37060c = hrecyclerview;
    }

    @NonNull
    public static cq0 bind(@NonNull View rootView) {
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.findChildViewById(rootView, R.id.hrecyclerview);
        if (horizontalRecyclerView != null) {
            return new cq0((RelativeLayout) rootView, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.hrecyclerview)));
    }

    @NonNull
    public static cq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37059b;
    }

    @NonNull
    public static cq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_intersting_midle_layout1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
