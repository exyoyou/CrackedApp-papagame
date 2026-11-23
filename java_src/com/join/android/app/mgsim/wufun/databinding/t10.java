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
public final class t10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f45080g;

    private t10(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView imageBlur, @NonNull SimpleDraweeView imageViewHPic, @NonNull ImageView imageViewPlay, @NonNull SimpleDraweeView imageViewVPic, @NonNull ImageView ivBorder) {
        this.f45075b = rootView;
        this.f45076c = imageBlur;
        this.f45077d = imageViewHPic;
        this.f45078e = imageViewPlay;
        this.f45079f = imageViewVPic;
        this.f45080g = ivBorder;
    }

    @NonNull
    public static t10 bind(@NonNull View rootView) {
        int i10 = R.id.image_blur;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.image_blur);
        if (simpleDraweeView != null) {
            i10 = R.id.imageViewHPic;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imageViewHPic);
            if (simpleDraweeView2 != null) {
                i10 = R.id.imageViewPlay;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageViewPlay);
                if (imageView != null) {
                    i10 = R.id.imageViewVPic;
                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.imageViewVPic);
                    if (simpleDraweeView3 != null) {
                        i10 = R.id.iv_border;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_border);
                        if (imageView2 != null) {
                            return new t10((RelativeLayout) rootView, simpleDraweeView, simpleDraweeView2, imageView, simpleDraweeView3, imageView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static t10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45075b;
    }

    @NonNull
    public static t10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_game_detail_images, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
