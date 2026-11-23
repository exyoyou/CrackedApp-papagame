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
public final class kr implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f40941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final StandardVideoView f40942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40943f;

    private kr(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView ivBookBg, @NonNull View nullView, @NonNull StandardVideoView videoPlayer, @NonNull RelativeLayout videolayout) {
        this.f40939b = rootView;
        this.f40940c = ivBookBg;
        this.f40941d = nullView;
        this.f40942e = videoPlayer;
        this.f40943f = videolayout;
    }

    @NonNull
    public static kr bind(@NonNull View rootView) {
        int i10 = R.id.iv_book_bg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_book_bg);
        if (simpleDraweeView != null) {
            i10 = R.id.nullView;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.nullView);
            if (viewFindChildViewById != null) {
                i10 = R.id.videoPlayer;
                StandardVideoView standardVideoView = (StandardVideoView) ViewBindings.findChildViewById(rootView, R.id.videoPlayer);
                if (standardVideoView != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) rootView;
                    return new kr(relativeLayout, simpleDraweeView, viewFindChildViewById, standardVideoView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static kr inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40939b;
    }

    @NonNull
    public static kr inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_mini_game_video_v, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
