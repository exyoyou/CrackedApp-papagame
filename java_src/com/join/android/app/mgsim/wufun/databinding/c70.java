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
import com.join.mgps.customview.InterceptEventHorizontalScrollView;

/* JADX INFO: loaded from: classes4.dex */
public final class c70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final InterceptEventHorizontalScrollView f36808c;

    private c70(@NonNull RelativeLayout rootView, @NonNull InterceptEventHorizontalScrollView mHorizontalScrollView) {
        this.f36807b = rootView;
        this.f36808c = mHorizontalScrollView;
    }

    @NonNull
    public static c70 bind(@NonNull View rootView) {
        InterceptEventHorizontalScrollView interceptEventHorizontalScrollView = (InterceptEventHorizontalScrollView) ViewBindings.findChildViewById(rootView, R.id.mHorizontalScrollView);
        if (interceptEventHorizontalScrollView != null) {
            return new c70((RelativeLayout) rootView, interceptEventHorizontalScrollView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.mHorizontalScrollView)));
    }

    @NonNull
    public static c70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36807b;
    }

    @NonNull
    public static c70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_standalone_company_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
