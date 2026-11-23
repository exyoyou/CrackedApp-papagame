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
public final class hs implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HListView f39479d;

    private hs(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull HListView screenListView) {
        this.f39477b = rootView;
        this.f39478c = backLayout;
        this.f39479d = screenListView;
    }

    @NonNull
    public static hs bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.screenListView;
            HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.screenListView);
            if (hListView != null) {
                return new hs((LinearLayout) rootView, linearLayout, hListView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static hs inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39477b;
    }

    @NonNull
    public static hs inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_viewpagenew_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
