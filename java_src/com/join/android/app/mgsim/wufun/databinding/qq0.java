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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f43962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43964f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43965g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43969k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43970l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43971m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f43972n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f43973o;

    private qq0(@NonNull ConstraintLayout rootView, @NonNull TextView appSize, @NonNull FrameLayout flBtn, @NonNull SimpleDraweeView ivGameIcon, @NonNull LinearLayout llInfo, @NonNull ProgressBar loadingProgress, @NonNull TextView lodingInfo, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull ConstraintLayout root, @NonNull TextView tvBtn, @NonNull TextView tvGameName, @NonNull TextView tvGameTags, @NonNull MultiStandVideo wfVideo) {
        this.f43960b = rootView;
        this.f43961c = appSize;
        this.f43962d = flBtn;
        this.f43963e = ivGameIcon;
        this.f43964f = llInfo;
        this.f43965g = loadingProgress;
        this.f43966h = lodingInfo;
        this.f43967i = progressBar;
        this.f43968j = progressBarZip;
        this.f43969k = root;
        this.f43970l = tvBtn;
        this.f43971m = tvGameName;
        this.f43972n = tvGameTags;
        this.f43973o = wfVideo;
    }

    @NonNull
    public static qq0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.flBtn;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flBtn);
            if (frameLayout != null) {
                i10 = R.id.ivGameIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGameIcon);
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
                                        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
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
                                                        return new qq0(constraintLayout, textView, frameLayout, simpleDraweeView, linearLayout, progressBar, textView2, progressBar2, progressBar3, constraintLayout, textView3, textView4, textView5, multiStandVideo);
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
    public static qq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43960b;
    }

    @NonNull
    public static qq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_video_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
