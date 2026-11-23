package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cs implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37085c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f37086d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f37087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final StandardVideoView f37088f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37089g;

    private cs(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView ivBookBg, @NonNull View nullView, @NonNull View vMask, @NonNull StandardVideoView videoPlayer, @NonNull RelativeLayout videolayout) {
        this.f37084b = rootView;
        this.f37085c = ivBookBg;
        this.f37086d = nullView;
        this.f37087e = vMask;
        this.f37088f = videoPlayer;
        this.f37089g = videolayout;
    }

    @NonNull
    public static cs bind(@NonNull View rootView) {
        int i10 = R.id.iv_book_bg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_book_bg);
        if (simpleDraweeView != null) {
            i10 = R.id.nullView;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.nullView);
            if (viewFindChildViewById != null) {
                i10 = R.id.v_mask;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_mask);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.videoPlayer;
                    StandardVideoView standardVideoView = (StandardVideoView) ViewBindings.findChildViewById(rootView, R.id.videoPlayer);
                    if (standardVideoView != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) rootView;
                        return new cs(relativeLayout, simpleDraweeView, viewFindChildViewById, viewFindChildViewById2, standardVideoView, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cs inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37084b;
    }

    @NonNull
    public static cs inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_video_bt, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
