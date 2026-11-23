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
import com.join.mgps.customview.ExpandLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class rq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ExpandLayout f44458c;

    private rq(@NonNull LinearLayout rootView, @NonNull ExpandLayout elView) {
        this.f44457b = rootView;
        this.f44458c = elView;
    }

    @NonNull
    public static rq bind(@NonNull View rootView) {
        ExpandLayout expandLayout = (ExpandLayout) ViewBindings.findChildViewById(rootView, R.id.el_view);
        if (expandLayout != null) {
            return new rq((LinearLayout) rootView, expandLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.el_view)));
    }

    @NonNull
    public static rq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44457b;
    }

    @NonNull
    public static rq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_describ_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
