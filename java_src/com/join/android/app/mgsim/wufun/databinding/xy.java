package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xy implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f47486e;

    private xy(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView bannerView, @NonNull SimpleDraweeView loading, @NonNull MultiStandVideo wfVideo) {
        this.f47483b = rootView;
        this.f47484c = bannerView;
        this.f47485d = loading;
        this.f47486e = wfVideo;
    }

    @NonNull
    public static xy bind(@NonNull View rootView) {
        int i10 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.bannerView);
        if (simpleDraweeView != null) {
            i10 = R.id.loading;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
            if (simpleDraweeView2 != null) {
                i10 = R.id.wf_video;
                MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(rootView, R.id.wf_video);
                if (multiStandVideo != null) {
                    return new xy((ConstraintLayout) rootView, simpleDraweeView, simpleDraweeView2, multiStandVideo);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xy inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47483b;
    }

    @NonNull
    public static xy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_daily_game_video, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
