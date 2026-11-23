package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class p9 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final SquareLayout f43277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SquareLayout f43279d;

    private p9(@NonNull SquareLayout rootView, @NonNull SimpleDraweeView itemImage, @NonNull SquareLayout itemLayout) {
        this.f43277b = rootView;
        this.f43278c = itemImage;
        this.f43279d = itemLayout;
    }

    @NonNull
    public static p9 bind(@NonNull View rootView) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.itemImage);
        if (simpleDraweeView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.itemImage)));
        }
        SquareLayout squareLayout = (SquareLayout) rootView;
        return new p9(squareLayout, simpleDraweeView, squareLayout);
    }

    @NonNull
    public static p9 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SquareLayout getRoot() {
        return this.f43277b;
    }

    @NonNull
    public static p9 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.choose_icon_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
