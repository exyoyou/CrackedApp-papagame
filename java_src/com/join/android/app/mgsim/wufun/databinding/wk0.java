package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wk0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ViewFlipper f46843c;

    private wk0(@NonNull LinearLayout rootView, @NonNull ViewFlipper topLineView) {
        this.f46842b = rootView;
        this.f46843c = topLineView;
    }

    @NonNull
    public static wk0 bind(@NonNull View rootView) {
        ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(rootView, R.id.topLineView);
        if (viewFlipper != null) {
            return new wk0((LinearLayout) rootView, viewFlipper);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.topLineView)));
    }

    @NonNull
    public static wk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46842b;
    }

    @NonNull
    public static wk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_papa_title_include_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
