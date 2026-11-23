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

/* JADX INFO: loaded from: classes4.dex */
public final class e00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f37702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f37704d;

    private e00(@NonNull FrameLayout rootView, @NonNull View viewSelected, @NonNull View viewUnselected) {
        this.f37702b = rootView;
        this.f37703c = viewSelected;
        this.f37704d = viewUnselected;
    }

    @NonNull
    public static e00 bind(@NonNull View rootView) {
        int i10 = R.id.viewSelected;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.viewSelected);
        if (viewFindChildViewById != null) {
            i10 = R.id.viewUnselected;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.viewUnselected);
            if (viewFindChildViewById2 != null) {
                return new e00((FrameLayout) rootView, viewFindChildViewById, viewFindChildViewById2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static e00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f37702b;
    }

    @NonNull
    public static e00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_discovery_banner_indicator, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
