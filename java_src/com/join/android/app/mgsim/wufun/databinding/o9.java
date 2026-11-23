package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class o9 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final SquareLayout f42723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SquareLayout f42726e;

    private o9(@NonNull SquareLayout rootView, @NonNull SimpleDraweeView itemImage, @NonNull ImageView itemImageChoice, @NonNull SquareLayout itemLayout) {
        this.f42723b = rootView;
        this.f42724c = itemImage;
        this.f42725d = itemImageChoice;
        this.f42726e = itemLayout;
    }

    @NonNull
    public static o9 bind(@NonNull View rootView) {
        int i10 = R.id.itemImage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.itemImage);
        if (simpleDraweeView != null) {
            i10 = R.id.itemImageChoice;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.itemImageChoice);
            if (imageView != null) {
                SquareLayout squareLayout = (SquareLayout) rootView;
                return new o9(squareLayout, simpleDraweeView, imageView, squareLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o9 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SquareLayout getRoot() {
        return this.f42723b;
    }

    @NonNull
    public static o9 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.choose_grid_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
