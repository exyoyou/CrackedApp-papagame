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
public final class gs implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final HListView f38972d;

    private gs(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull HListView screenListView) {
        this.f38970b = rootView;
        this.f38971c = backLayout;
        this.f38972d = screenListView;
    }

    @NonNull
    public static gs bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.screenListView;
            HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.screenListView);
            if (hListView != null) {
                return new gs((LinearLayout) rootView, linearLayout, hListView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gs inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38970b;
    }

    @NonNull
    public static gs inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_viewpagenew, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
