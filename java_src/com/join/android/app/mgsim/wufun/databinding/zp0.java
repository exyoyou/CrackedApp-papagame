package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48351c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f48352d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CardView f48353e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48354f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48355g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48356h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ProgressBar f48357i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f48358j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ProgressBar f48359k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ProgressBar f48360l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f48361m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f48362n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f48363o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f48364p;

    private zp0(@NonNull ConstraintLayout rootView, @NonNull TextView appSize, @NonNull FrameLayout flBtn, @NonNull CardView flContainer, @NonNull ConstraintLayout item, @NonNull SimpleDraweeView ivGamePic, @NonNull LinearLayout llInfo, @NonNull ProgressBar loadingProgress, @NonNull TextView lodingInfo, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull TextView tvBtn, @NonNull TextView tvGameName, @NonNull TextView tvGameTags, @NonNull MultiStandVideo wfVideo) {
        this.f48350b = rootView;
        this.f48351c = appSize;
        this.f48352d = flBtn;
        this.f48353e = flContainer;
        this.f48354f = item;
        this.f48355g = ivGamePic;
        this.f48356h = llInfo;
        this.f48357i = loadingProgress;
        this.f48358j = lodingInfo;
        this.f48359k = progressBar;
        this.f48360l = progressBarZip;
        this.f48361m = tvBtn;
        this.f48362n = tvGameName;
        this.f48363o = tvGameTags;
        this.f48364p = wfVideo;
    }

    @NonNull
    public static zp0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.flBtn;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flBtn);
            if (frameLayout != null) {
                i10 = R.id.flContainer;
                CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.flContainer);
                if (cardView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                    i10 = R.id.ivGamePic;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGamePic);
                    if (simpleDraweeView != null) {
                        i10 = R.id.llInfo;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llInfo);
                        if (linearLayout != null) {
                            i10 = R.id.loading_progress;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.loading_progress);
                            if (progressBar != null) {
                                i10 = R.id.loding_info;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loding_info);
                                if (textView2 != null) {
                                    i10 = R.id.progressBar;
                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                    if (progressBar2 != null) {
                                        i10 = R.id.progressBarZip;
                                        ProgressBar progressBar3 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                        if (progressBar3 != null) {
                                            i10 = R.id.tvBtn;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBtn);
                                            if (textView3 != null) {
                                                i10 = R.id.tvGameName;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                                                if (textView4 != null) {
                                                    i10 = R.id.tvGameTags;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameTags);
                                                    if (textView5 != null) {
                                                        i10 = R.id.wf_video;
                                                        MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(rootView, R.id.wf_video);
                                                        if (multiStandVideo != null) {
                                                            return new zp0(constraintLayout, textView, frameLayout, cardView, constraintLayout, simpleDraweeView, linearLayout, progressBar, textView2, progressBar2, progressBar3, textView3, textView4, textView5, multiStandVideo);
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
    public static zp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48350b;
    }

    @NonNull
    public static zp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_gamelist_grid_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
