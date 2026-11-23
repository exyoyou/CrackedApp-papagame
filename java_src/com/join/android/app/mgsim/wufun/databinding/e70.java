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
public final class e70 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final InterceptEventHorizontalScrollView f37822c;

    private e70(@NonNull RelativeLayout rootView, @NonNull InterceptEventHorizontalScrollView mHorizontalScrollView) {
        this.f37821b = rootView;
        this.f37822c = mHorizontalScrollView;
    }

    @NonNull
    public static e70 bind(@NonNull View rootView) {
        InterceptEventHorizontalScrollView interceptEventHorizontalScrollView = (InterceptEventHorizontalScrollView) ViewBindings.findChildViewById(rootView, R.id.mHorizontalScrollView);
        if (interceptEventHorizontalScrollView != null) {
            return new e70((RelativeLayout) rootView, interceptEventHorizontalScrollView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.mHorizontalScrollView)));
    }

    @NonNull
    public static e70 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37821b;
    }

    @NonNull
    public static e70 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_standalone_horizontal_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
