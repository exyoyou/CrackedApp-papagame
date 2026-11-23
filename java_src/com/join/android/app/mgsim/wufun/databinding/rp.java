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
public final class rp implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f44447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f44450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f44452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44454i;

    private rp(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView bannerView, @NonNull SimpleDraweeView imageViewHPic, @NonNull ImageView imageViewPlay, @NonNull SimpleDraweeView imageViewVPic, @NonNull SimpleDraweeView loading, @NonNull RelativeLayout rlVideo, @NonNull FrameLayout videoContner) {
        this.f44447b = rootView;
        this.f44448c = bannerView;
        this.f44449d = imageViewHPic;
        this.f44450e = imageViewPlay;
        this.f44451f = imageViewVPic;
        this.f44452g = loading;
        this.f44453h = rlVideo;
        this.f44454i = videoContner;
    }

    @NonNull
    public static rp bind(@NonNull View rootView) {
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
                                    return new rp((RelativeLayout) rootView, simpleDraweeView, simpleDraweeView2, imageView, simpleDraweeView3, simpleDraweeView4, relativeLayout, frameLayout);
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
    public static rp inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f44447b;
    }

    @NonNull
    public static rp inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_detail_similar_game_item_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
