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
import in.srain.cube.views.GridViewWithHeaderAndFooter;

/* JADX INFO: loaded from: classes4.dex */
public final class rk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final GridViewWithHeaderAndFooter f44381c;

    private rk0(@NonNull RelativeLayout rootView, @NonNull GridViewWithHeaderAndFooter gridViewWithHeaderAndFooter) {
        this.f44380b = rootView;
        this.f44381c = gridViewWithHeaderAndFooter;
    }

    @NonNull
    public static rk0 bind(@NonNull View rootView) {
        GridViewWithHeaderAndFooter gridViewWithHeaderAndFooter = (GridViewWithHeaderAndFooter) ViewBindings.findChildViewById(rootView, R.id.gridViewWithHeaderAndFooter);
        if (gridViewWithHeaderAndFooter != null) {
            return new rk0((RelativeLayout) rootView, gridViewWithHeaderAndFooter);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.gridViewWithHeaderAndFooter)));
    }

    @NonNull
    public static rk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44380b;
    }

    @NonNull
    public static rk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_main_fight_top_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
