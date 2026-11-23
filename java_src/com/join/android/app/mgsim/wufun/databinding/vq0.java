package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final hw0 f46418d;

    private vq0(@NonNull RelativeLayout rootView, @NonNull FrameLayout fragment, @NonNull hw0 title) {
        this.f46416b = rootView;
        this.f46417c = fragment;
        this.f46418d = title;
    }

    @NonNull
    public static vq0 bind(@NonNull View rootView) {
        int i10 = R.id.fragment;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.fragment);
        if (frameLayout != null) {
            i10 = R.id.title;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title);
            if (viewFindChildViewById != null) {
                return new vq0((RelativeLayout) rootView, frameLayout, hw0.bind(viewFindChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46416b;
    }

    @NonNull
    public static vq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papeverday_new_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
