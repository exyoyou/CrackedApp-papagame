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
public final class t70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f45145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f45146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f45147d;

    private t70(@NonNull FrameLayout rootView, @NonNull View viewSelected, @NonNull View viewUnselected) {
        this.f45145b = rootView;
        this.f45146c = viewSelected;
        this.f45147d = viewUnselected;
    }

    @NonNull
    public static t70 bind(@NonNull View rootView) {
        int i10 = R.id.viewSelected;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.viewSelected);
        if (viewFindChildViewById != null) {
            i10 = R.id.viewUnselected;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.viewUnselected);
            if (viewFindChildViewById2 != null) {
                return new t70((FrameLayout) rootView, viewFindChildViewById, viewFindChildViewById2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f45145b;
    }

    @NonNull
    public static t70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_update_feature_indicator, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
