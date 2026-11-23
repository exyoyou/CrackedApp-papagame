package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class kp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f40904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40905e;

    private kp(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView imageViewHPic, @NonNull ImageView imageViewPlay, @NonNull SimpleDraweeView imageViewVPic) {
        this.f40902b = rootView;
        this.f40903c = imageViewHPic;
        this.f40904d = imageViewPlay;
        this.f40905e = imageViewVPic;
    }

    @NonNull
    public static kp bind(@NonNull View rootView) {
        int i10 = R.id.imageViewHPic;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imageViewHPic);
        if (simpleDraweeView != null) {
            i10 = R.id.imageViewPlay;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageViewPlay);
            if (imageView != null) {
                i10 = R.id.imageViewVPic;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imageViewVPic);
                if (simpleDraweeView2 != null) {
                    return new kp((RelativeLayout) rootView, simpleDraweeView, imageView, simpleDraweeView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40902b;
    }

    @NonNull
    public static kp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detail_item1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
