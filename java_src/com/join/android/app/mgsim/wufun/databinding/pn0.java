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
public final class pn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final SquareLayout f43446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SquareLayout f43449e;

    private pn0(@NonNull SquareLayout rootView, @NonNull SimpleDraweeView image, @NonNull ImageView imageFlag, @NonNull SquareLayout itemLayout) {
        this.f43446b = rootView;
        this.f43447c = image;
        this.f43448d = imageFlag;
        this.f43449e = itemLayout;
    }

    @NonNull
    public static pn0 bind(@NonNull View rootView) {
        int i10 = R.id.image;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.image);
        if (simpleDraweeView != null) {
            i10 = R.id.image_flag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.image_flag);
            if (imageView != null) {
                SquareLayout squareLayout = (SquareLayout) rootView;
                return new pn0(squareLayout, simpleDraweeView, imageView, squareLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static pn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SquareLayout getRoot() {
        return this.f43446b;
    }

    @NonNull
    public static pn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.my_album_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
