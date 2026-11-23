package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class o00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f42575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f42577d;

    private o00(@NonNull FrameLayout rootView, @NonNull SimpleDraweeView ivIcon, @NonNull View selector) {
        this.f42575b = rootView;
        this.f42576c = ivIcon;
        this.f42577d = selector;
    }

    @NonNull
    public static o00 bind(@NonNull View rootView) {
        int i10 = R.id.ivIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
        if (simpleDraweeView != null) {
            i10 = R.id.selector;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.selector);
            if (viewFindChildViewById != null) {
                return new o00((FrameLayout) rootView, simpleDraweeView, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f42575b;
    }

    @NonNull
    public static o00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_end_game_icon, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
