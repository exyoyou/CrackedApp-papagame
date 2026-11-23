package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.module.hmcloud.pad.HMOpView;
import com.join.mgps.customview.hmfloat.HMAutoDockLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class mm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HMAutoDockLayout f41971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final HMOpView f41972e;

    private mm(@NonNull ConstraintLayout rootView, @NonNull FrameLayout btnBack, @NonNull HMAutoDockLayout dock, @NonNull HMOpView opContainer) {
        this.f41969b = rootView;
        this.f41970c = btnBack;
        this.f41971d = dock;
        this.f41972e = opContainer;
    }

    @NonNull
    public static mm bind(@NonNull View rootView) {
        int i10 = R.id.btn_back;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.btn_back);
        if (frameLayout != null) {
            i10 = R.id.dock;
            HMAutoDockLayout hMAutoDockLayout = (HMAutoDockLayout) ViewBindings.findChildViewById(rootView, R.id.dock);
            if (hMAutoDockLayout != null) {
                i10 = R.id.op_container;
                HMOpView hMOpView = (HMOpView) ViewBindings.findChildViewById(rootView, R.id.op_container);
                if (hMOpView != null) {
                    return new mm((ConstraintLayout) rootView, frameLayout, hMAutoDockLayout, hMOpView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f41969b;
    }

    @NonNull
    public static mm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_hm_key_guide, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
