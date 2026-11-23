package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.EmptyControlVideoView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class pv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43548e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43549f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43550g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43551h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final EmptyControlVideoView f43552i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43553j;

    private pv0(@NonNull RelativeLayout rootView, @NonNull RelativeLayout bottomImag, @NonNull TextView countdown, @NonNull RelativeLayout countdownLayout, @NonNull TextView countdownVideo, @NonNull ImageView imageView24, @NonNull TextView textViewVersion, @NonNull EmptyControlVideoView videoPlayer, @NonNull SimpleDraweeView viewImage) {
        this.f43545b = rootView;
        this.f43546c = bottomImag;
        this.f43547d = countdown;
        this.f43548e = countdownLayout;
        this.f43549f = countdownVideo;
        this.f43550g = imageView24;
        this.f43551h = textViewVersion;
        this.f43552i = videoPlayer;
        this.f43553j = viewImage;
    }

    @NonNull
    public static pv0 bind(@NonNull View rootView) {
        int i10 = R.id.bottomImag;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.bottomImag);
        if (relativeLayout != null) {
            i10 = R.id.countdown;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.countdown);
            if (textView != null) {
                i10 = R.id.countdownLayout;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.countdownLayout);
                if (relativeLayout2 != null) {
                    i10 = R.id.countdownVideo;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.countdownVideo);
                    if (textView2 != null) {
                        i10 = R.id.imageView24;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView24);
                        if (imageView != null) {
                            i10 = R.id.textViewVersion;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewVersion);
                            if (textView3 != null) {
                                i10 = R.id.video_player;
                                EmptyControlVideoView emptyControlVideoView = (EmptyControlVideoView) ViewBindings.findChildViewById(rootView, R.id.video_player);
                                if (emptyControlVideoView != null) {
                                    i10 = R.id.viewImage;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.viewImage);
                                    if (simpleDraweeView != null) {
                                        return new pv0((RelativeLayout) rootView, relativeLayout, textView, relativeLayout2, textView2, imageView, textView3, emptyControlVideoView, simpleDraweeView);
                                    }
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
    public static pv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43545b;
    }

    @NonNull
    public static pv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.splash_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
