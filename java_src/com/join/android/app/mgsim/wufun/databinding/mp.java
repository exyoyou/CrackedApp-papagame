package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class mp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42004f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42005g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42006h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42007i;

    private mp(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView bannerView, @NonNull SimpleDraweeView imageViewHPic, @NonNull ImageView imageViewPlay, @NonNull SimpleDraweeView imageViewVPic, @NonNull SimpleDraweeView loading, @NonNull RelativeLayout rlVideo, @NonNull FrameLayout videoContner) {
        this.f42000b = rootView;
        this.f42001c = bannerView;
        this.f42002d = imageViewHPic;
        this.f42003e = imageViewPlay;
        this.f42004f = imageViewVPic;
        this.f42005g = loading;
        this.f42006h = rlVideo;
        this.f42007i = videoContner;
    }

    @NonNull
    public static mp bind(@NonNull View rootView) {
        int i10 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.bannerView);
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
                        i10 = R.id.loading;
                        SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                        if (simpleDraweeView4 != null) {
                            i10 = R.id.rl_video;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_video);
                            if (relativeLayout != null) {
                                i10 = R.id.videoContner;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContner);
                                if (frameLayout != null) {
                                    return new mp((RelativeLayout) rootView, simpleDraweeView, simpleDraweeView2, imageView, simpleDraweeView3, simpleDraweeView4, relativeLayout, frameLayout);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42000b;
    }

    @NonNull
    public static mp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detail_item_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
