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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class x6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f47113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final cb0 f47116e;

    private x6(@NonNull FrameLayout rootView, @NonNull SimpleDraweeView ivBanner, @NonNull LinearLayout llFastEntrance, @NonNull cb0 loadingLayout) {
        this.f47113b = rootView;
        this.f47114c = ivBanner;
        this.f47115d = llFastEntrance;
        this.f47116e = loadingLayout;
    }

    @NonNull
    public static x6 bind(@NonNull View rootView) {
        int i10 = R.id.iv_banner;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_banner);
        if (simpleDraweeView != null) {
            i10 = R.id.ll_fast_entrance;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_fast_entrance);
            if (linearLayout != null) {
                i10 = R.id.loadingLayout;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.loadingLayout);
                if (viewFindChildViewById != null) {
                    return new x6((FrameLayout) rootView, simpleDraweeView, linearLayout, cb0.bind(viewFindChildViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static x6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f47113b;
    }

    @NonNull
    public static x6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.banner_handshank_top, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
