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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class vs0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f46436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46439e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46440f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46441g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46442h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46443i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46444j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46445k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46446l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f46447m;

    private vs0(@NonNull ConstraintLayout rootView, @NonNull TextView appSize, @NonNull FrameLayout flBtn, @NonNull SimpleDraweeView ivGamePic, @NonNull LinearLayout llInfo, @NonNull ProgressBar loadingProgress, @NonNull TextView lodingInfo, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull TextView tvBtn, @NonNull TextView tvGameName, @NonNull TextView tvTags) {
        this.f46436b = rootView;
        this.f46437c = appSize;
        this.f46438d = flBtn;
        this.f46439e = ivGamePic;
        this.f46440f = llInfo;
        this.f46441g = loadingProgress;
        this.f46442h = lodingInfo;
        this.f46443i = progressBar;
        this.f46444j = progressBarZip;
        this.f46445k = tvBtn;
        this.f46446l = tvGameName;
        this.f46447m = tvTags;
    }

    @NonNull
    public static vs0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.flBtn;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flBtn);
            if (frameLayout != null) {
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
                                                i10 = R.id.tvTags;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTags);
                                                if (textView5 != null) {
                                                    return new vs0((ConstraintLayout) rootView, textView, frameLayout, simpleDraweeView, linearLayout, progressBar, textView2, progressBar2, progressBar3, textView3, textView4, textView5);
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
    public static vs0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f46436b;
    }

    @NonNull
    public static vs0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.ranking_listview_item_v2, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
