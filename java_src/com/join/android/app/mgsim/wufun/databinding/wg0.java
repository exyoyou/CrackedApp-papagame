package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f46791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final cx0 f46793e;

    private wg0(@NonNull LinearLayout rootView, @NonNull bj0 actionbarLayout, @NonNull FrameLayout videoContainer, @NonNull cx0 videoLayout) {
        this.f46790b = rootView;
        this.f46791c = actionbarLayout;
        this.f46792d = videoContainer;
        this.f46793e = videoLayout;
    }

    @NonNull
    public static wg0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContainer);
            if (frameLayout != null) {
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.videoLayout);
                if (viewFindChildViewById2 != null) {
                    return new wg0((LinearLayout) rootView, bj0VarBind, frameLayout, cx0.bind(viewFindChildViewById2));
                }
                i10 = R.id.videoLayout;
            } else {
                i10 = R.id.videoContainer;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46790b;
    }

    @NonNull
    public static wg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_my_dynamic_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
