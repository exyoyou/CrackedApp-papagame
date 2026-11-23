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
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class gd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final HListView f38798c;

    private gd(@NonNull LinearLayout rootView, @NonNull HListView favoriteList) {
        this.f38797b = rootView;
        this.f38798c = favoriteList;
    }

    @NonNull
    public static gd bind(@NonNull View rootView) {
        HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.favoriteList);
        if (hListView != null) {
            return new gd((LinearLayout) rootView, hListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.favoriteList)));
    }

    @NonNull
    public static gd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38797b;
    }

    @NonNull
    public static gd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.detial_favortis_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
