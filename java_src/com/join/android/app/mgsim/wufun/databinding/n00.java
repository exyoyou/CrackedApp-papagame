package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
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

/* JADX INFO: loaded from: classes4.dex */
public final class n00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f42126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42130f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42131g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42134j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42135k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f42136l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42137m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f42138n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42139o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f42140p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final FrameLayout f42141q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f42142r;

    private n00(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView bannerView, @NonNull TextView btnPlay, @NonNull ImageView ivHot, @NonNull ImageView ivTrophy, @NonNull LinearLayout llHot, @NonNull SimpleDraweeView loading, @NonNull RelativeLayout rlVideo, @NonNull ConstraintLayout root, @NonNull TextView tvGameName, @NonNull TextView tvHot, @NonNull TextView tvName, @NonNull TextView tvPassCount, @NonNull TextView tvPassRatio, @NonNull TextView tvPassTag, @NonNull FrameLayout videoContner, @NonNull MultiStandVideo wfVideo) {
        this.f42126b = rootView;
        this.f42127c = bannerView;
        this.f42128d = btnPlay;
        this.f42129e = ivHot;
        this.f42130f = ivTrophy;
        this.f42131g = llHot;
        this.f42132h = loading;
        this.f42133i = rlVideo;
        this.f42134j = root;
        this.f42135k = tvGameName;
        this.f42136l = tvHot;
        this.f42137m = tvName;
        this.f42138n = tvPassCount;
        this.f42139o = tvPassRatio;
        this.f42140p = tvPassTag;
        this.f42141q = videoContner;
        this.f42142r = wfVideo;
    }

    @NonNull
    public static n00 bind(@NonNull View rootView) {
        int i10 = R.id.bannerView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.bannerView);
        if (simpleDraweeView != null) {
            i10 = R.id.btnPlay;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnPlay);
            if (textView != null) {
                i10 = R.id.ivHot;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivHot);
                if (imageView != null) {
                    i10 = R.id.ivTrophy;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivTrophy);
                    if (imageView2 != null) {
                        i10 = R.id.llHot;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llHot);
                        if (linearLayout != null) {
                            i10 = R.id.loading;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.rlVideo;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlVideo);
                                if (relativeLayout != null) {
                                    ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                                    i10 = R.id.tvGameName;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                                    if (textView2 != null) {
                                        i10 = R.id.tvHot;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvHot);
                                        if (textView3 != null) {
                                            i10 = R.id.tvName;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvName);
                                            if (textView4 != null) {
                                                i10 = R.id.tvPassCount;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPassCount);
                                                if (textView5 != null) {
                                                    i10 = R.id.tvPassRatio;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPassRatio);
                                                    if (textView6 != null) {
                                                        i10 = R.id.tvPassTag;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPassTag);
                                                        if (textView7 != null) {
                                                            i10 = R.id.videoContner;
                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContner);
                                                            if (frameLayout != null) {
                                                                i10 = R.id.wf_video;
                                                                MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(rootView, R.id.wf_video);
                                                                if (multiStandVideo != null) {
                                                                    return new n00(constraintLayout, simpleDraweeView, textView, imageView, imageView2, linearLayout, simpleDraweeView2, relativeLayout, constraintLayout, textView2, textView3, textView4, textView5, textView6, textView7, frameLayout, multiStandVideo);
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
    public static n00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f42126b;
    }

    @NonNull
    public static n00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_end_game_discovery_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
