package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ap implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final StandardVideoView f35950c;

    private ap(@NonNull RelativeLayout rootView, @NonNull StandardVideoView videoPlayer) {
        this.f35949b = rootView;
        this.f35950c = videoPlayer;
    }

    @NonNull
    public static ap bind(@NonNull View rootView) {
        StandardVideoView standardVideoView = (StandardVideoView) ViewBindings.findChildViewById(rootView, R.id.videoPlayer);
        if (standardVideoView != null) {
            return new ap((RelativeLayout) rootView, standardVideoView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.videoPlayer)));
    }

    @NonNull
    public static ap inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35949b;
    }

    @NonNull
    public static ap inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fullscreen_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
