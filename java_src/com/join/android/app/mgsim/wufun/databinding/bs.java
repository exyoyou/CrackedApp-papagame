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
public final class bs implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f36551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final StandardVideoView f36552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36553f;

    private bs(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView ivBookBg, @NonNull View nullView, @NonNull StandardVideoView videoPlayer, @NonNull RelativeLayout videolayout) {
        this.f36549b = rootView;
        this.f36550c = ivBookBg;
        this.f36551d = nullView;
        this.f36552e = videoPlayer;
        this.f36553f = videolayout;
    }

    @NonNull
    public static bs bind(@NonNull View rootView) {
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
                    return new bs(relativeLayout, simpleDraweeView, viewFindChildViewById, standardVideoView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bs inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36549b;
    }

    @NonNull
    public static bs inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_video, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
