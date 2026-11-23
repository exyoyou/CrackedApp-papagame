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
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37142c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37143d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final hx0 f37144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final MyVideoView f37146g;

    private cx0(@NonNull RelativeLayout rootView, @NonNull ImageView back, @NonNull SimpleDraweeView cover, @NonNull hx0 loadingLayout, @NonNull ImageView play, @NonNull MyVideoView video) {
        this.f37141b = rootView;
        this.f37142c = back;
        this.f37143d = cover;
        this.f37144e = loadingLayout;
        this.f37145f = play;
        this.f37146g = video;
    }

    @NonNull
    public static cx0 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.cover;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.cover);
            if (simpleDraweeView != null) {
                i10 = R.id.loadingLayout;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.loadingLayout);
                if (viewFindChildViewById != null) {
                    hx0 hx0VarBind = hx0.bind(viewFindChildViewById);
                    i10 = R.id.play;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.play);
                    if (imageView2 != null) {
                        i10 = R.id.video;
                        MyVideoView myVideoView = (MyVideoView) ViewBindings.findChildViewById(rootView, R.id.video);
                        if (myVideoView != null) {
                            return new cx0((RelativeLayout) rootView, imageView, simpleDraweeView, hx0VarBind, imageView2, myVideoView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37141b;
    }

    @NonNull
    public static cx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.video_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
