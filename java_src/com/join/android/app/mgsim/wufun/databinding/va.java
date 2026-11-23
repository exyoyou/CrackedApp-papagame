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
import com.join.mgps.customview.XListView;

/* JADX INFO: loaded from: classes4.dex */
public final class va implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView f46185c;

    private va(@NonNull LinearLayout rootView, @NonNull XListView gridListView) {
        this.f46184b = rootView;
        this.f46185c = gridListView;
    }

    @NonNull
    public static va bind(@NonNull View rootView) {
        XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.gridListView);
        if (xListView != null) {
            return new va((LinearLayout) rootView, xListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.gridListView)));
    }

    @NonNull
    public static va inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46184b;
    }

    @NonNull
    public static va inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.collection_five, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
