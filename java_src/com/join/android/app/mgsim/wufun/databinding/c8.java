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
public final class c8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XListView f36810c;

    private c8(@NonNull LinearLayout rootView, @NonNull XListView commonListView) {
        this.f36809b = rootView;
        this.f36810c = commonListView;
    }

    @NonNull
    public static c8 bind(@NonNull View rootView) {
        XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.commonListView);
        if (xListView != null) {
            return new c8((LinearLayout) rootView, xListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.commonListView)));
    }

    @NonNull
    public static c8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36809b;
    }

    @NonNull
    public static c8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.category_common_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
