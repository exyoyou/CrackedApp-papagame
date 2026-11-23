package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class wf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FlowLayout f46780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FlowLayout f46781c;

    private wf0(@NonNull FlowLayout rootView, @NonNull FlowLayout flowLayout) {
        this.f46780b = rootView;
        this.f46781c = flowLayout;
    }

    @NonNull
    public static wf0 bind(@NonNull View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        FlowLayout flowLayout = (FlowLayout) rootView;
        return new wf0(flowLayout, flowLayout);
    }

    @NonNull
    public static wf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FlowLayout getRoot() {
        return this.f46780b;
    }

    @NonNull
    public static wf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_flow_layout_container, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
