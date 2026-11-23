package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;

/* JADX INFO: loaded from: classes4.dex */
public final class p00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f43155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43156f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f43157g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43158h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final MStarBar f43159i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f43160j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43161k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43162l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43163m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f43164n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f43165o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f43166p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f43167q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f43168r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final FrameLayout f43169s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f43170t;

    private p00(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView bannerView, @NonNull TextView btnPlay, @NonNull View divider, @NonNull SimpleDraweeView gameIcon, @NonNull ImageView ivTrophy, @NonNull SimpleDraweeView loading, @NonNull MStarBar mStarBar, @NonNull RelativeLayout rlVideo, @NonNull ConstraintLayout root, @NonNull TextView tvGameName, @NonNull TextView tvHard, @NonNull TextView tvHot, @NonNull TextView tvName, @NonNull TextView tvPassCount, @NonNull TextView tvPassRatio, @NonNull ImageView tvPassTag, @NonNull FrameLayout videoContner, @NonNull MultiStandVideo wfVideo) {
        this.f43152b = rootView;
        this.f43153c = bannerView;
        this.f43154d = btnPlay;
        this.f43155e = divider;
        this.f43156f = gameIcon;
        this.f43157g = ivTrophy;
        this.f43158h = loading;
        this.f43159i = mStarBar;
        this.f43160j = rlVideo;
        this.f43161k = root;
        this.f43162l = tvGameName;
        this.f43163m = tvHard;
        this.f43164n = tvHot;
        this.f43165o = tvName;
        this.f43166p = tvPassCount;
        this.f43167q = tvPassRatio;
        this.f43168r = tvPassTag;
        this.f43169s = videoContner;
        this.f43170t = wfVideo;
    }

    @NonNull
    public static p00 bind(@NonNull View rootView) {
        int i10 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.bannerView);
        if (simpleDraweeView != null) {
            i10 = R.id.btnPlay;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnPlay);
            if (textView != null) {
                i10 = R.id.divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                if (viewFindChildViewById != null) {
                    i10 = R.id.gameIcon;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
                    if (simpleDraweeView2 != null) {
                        i10 = R.id.ivTrophy;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivTrophy);
                        if (imageView != null) {
                            i10 = R.id.loading;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                            if (simpleDraweeView3 != null) {
                                i10 = R.id.mStarBar;
                                MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(rootView, R.id.mStarBar);
                                if (mStarBar != null) {
                                    i10 = R.id.rlVideo;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlVideo);
                                    if (relativeLayout != null) {
                                        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                                        i10 = R.id.tvGameName;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                                        if (textView2 != null) {
                                            i10 = R.id.tvHard;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvHard);
                                            if (textView3 != null) {
                                                i10 = R.id.tvHot;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvHot);
                                                if (textView4 != null) {
                                                    i10 = R.id.tvName;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvName);
                                                    if (textView5 != null) {
                                                        i10 = R.id.tvPassCount;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPassCount);
                                                        if (textView6 != null) {
                                                            i10 = R.id.tvPassRatio;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPassRatio);
                                                            if (textView7 != null) {
                                                                i10 = R.id.tvPassTag;
                                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.tvPassTag);
                                                                if (imageView2 != null) {
                                                                    i10 = R.id.videoContner;
                                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContner);
                                                                    if (frameLayout != null) {
                                                                        i10 = R.id.wf_video;
                                                                        MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(rootView, R.id.wf_video);
                                                                        if (multiStandVideo != null) {
                                                                            return new p00(constraintLayout, simpleDraweeView, textView, viewFindChildViewById, simpleDraweeView2, imageView, simpleDraweeView3, mStarBar, relativeLayout, constraintLayout, textView2, textView3, textView4, textView5, textView6, textView7, imageView2, frameLayout, multiStandVideo);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static p00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43152b;
    }

    @NonNull
    public static p00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_end_game_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
