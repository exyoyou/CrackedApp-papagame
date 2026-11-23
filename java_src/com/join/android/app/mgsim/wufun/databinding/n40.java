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
public final class n40 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final InterceptEventHorizontalScrollView f42187c;

    private n40(@NonNull RelativeLayout rootView, @NonNull InterceptEventHorizontalScrollView mHorizontalScrollView) {
        this.f42186b = rootView;
        this.f42187c = mHorizontalScrollView;
    }

    @NonNull
    public static n40 bind(@NonNull View rootView) {
        InterceptEventHorizontalScrollView interceptEventHorizontalScrollView = (InterceptEventHorizontalScrollView) ViewBindings.findChildViewById(rootView, R.id.mHorizontalScrollView);
        if (interceptEventHorizontalScrollView != null) {
            return new n40((RelativeLayout) rootView, interceptEventHorizontalScrollView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.mHorizontalScrollView)));
    }

    @NonNull
    public static n40 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42186b;
    }

    @NonNull
    public static n40 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_papa_standalone_rec, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
