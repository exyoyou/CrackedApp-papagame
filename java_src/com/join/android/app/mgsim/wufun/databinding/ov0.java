package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
public final class ov0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43082g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f43083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f43084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43086k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43087l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43088m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f43089n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f43090o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f43091p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final EmptyControlVideoView f43092q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43093r;

    private ov0(@NonNull RelativeLayout rootView, @NonNull RelativeLayout bottomImag, @NonNull TextView countdown, @NonNull RelativeLayout countdownLayout, @NonNull TextView countdownVideo, @NonNull ImageView imageView24, @NonNull ImageView ivHandShake, @NonNull ImageView ivHandUp, @NonNull LinearLayout llHandShake, @NonNull LinearLayout llHandUp, @NonNull RelativeLayout rlOptsBottom, @NonNull RelativeLayout rlRootView, @NonNull TextView textViewVersion, @NonNull TextView tvHandShakeTip, @NonNull TextView tvHandUpTip, @NonNull EmptyControlVideoView videoPlayer, @NonNull SimpleDraweeView viewImage) {
        this.f43077b = rootView;
        this.f43078c = bottomImag;
        this.f43079d = countdown;
        this.f43080e = countdownLayout;
        this.f43081f = countdownVideo;
        this.f43082g = imageView24;
        this.f43083h = ivHandShake;
        this.f43084i = ivHandUp;
        this.f43085j = llHandShake;
        this.f43086k = llHandUp;
        this.f43087l = rlOptsBottom;
        this.f43088m = rlRootView;
        this.f43089n = textViewVersion;
        this.f43090o = tvHandShakeTip;
        this.f43091p = tvHandUpTip;
        this.f43092q = videoPlayer;
        this.f43093r = viewImage;
    }

    @NonNull
    public static ov0 bind(@NonNull View rootView) {
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
                            i10 = R.id.iv_hand_shake;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_hand_shake);
                            if (imageView2 != null) {
                                i10 = R.id.iv_hand_up;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_hand_up);
                                if (imageView3 != null) {
                                    i10 = R.id.ll_hand_shake;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_hand_shake);
                                    if (linearLayout != null) {
                                        i10 = R.id.ll_hand_up;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_hand_up);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.rl_opts_bottom;
                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_opts_bottom);
                                            if (relativeLayout3 != null) {
                                                RelativeLayout relativeLayout4 = (RelativeLayout) rootView;
                                                i10 = R.id.textViewVersion;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewVersion);
                                                if (textView3 != null) {
                                                    i10 = R.id.tv_hand_shake_tip;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_hand_shake_tip);
                                                    if (textView4 != null) {
                                                        i10 = R.id.tv_hand_up_tip;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_hand_up_tip);
                                                        if (textView5 != null) {
                                                            i10 = R.id.video_player;
                                                            EmptyControlVideoView emptyControlVideoView = (EmptyControlVideoView) ViewBindings.findChildViewById(rootView, R.id.video_player);
                                                            if (emptyControlVideoView != null) {
                                                                i10 = R.id.viewImage;
                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.viewImage);
                                                                if (simpleDraweeView != null) {
                                                                    return new ov0(relativeLayout4, relativeLayout, textView, relativeLayout2, textView2, imageView, imageView2, imageView3, linearLayout, linearLayout2, relativeLayout3, relativeLayout4, textView3, textView4, textView5, emptyControlVideoView, simpleDraweeView);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
    public static ov0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43077b;
    }

    @NonNull
    public static ov0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.splash_activity_layout_b, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
