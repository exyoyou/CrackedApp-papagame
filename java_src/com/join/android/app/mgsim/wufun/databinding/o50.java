package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class o50 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f42671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f42674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42675f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f42676g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f42677h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f42678i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42679j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42680k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42681l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f42682m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f42683n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f42684o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ProgressBar f42685p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ProgressBar f42686q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42687r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42688s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42689t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f42690u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f42691v;

    private o50(@NonNull CardView rootView, @NonNull TextView adText, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull ImageView ivMask, @NonNull ImageView ivMaskSolid, @NonNull View line, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout llLabel, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull LinearLayout relateLayoutApp, @NonNull RelativeLayout rlDownloadState, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvLabel, @NonNull TextView tvScore) {
        this.f42671b = rootView;
        this.f42672c = adText;
        this.f42673d = appSize;
        this.f42674e = dvView;
        this.f42675f = giftPackageSwich;
        this.f42676g = ivMask;
        this.f42677h = ivMaskSolid;
        this.f42678i = line;
        this.f42679j = linearLayout;
        this.f42680k = linearLayout2;
        this.f42681l = llLabel;
        this.f42682m = lodingInfo;
        this.f42683n = mgListviewItemAppname;
        this.f42684o = mgListviewItemDescribe;
        this.f42685p = progressBar;
        this.f42686q = progressBarZip;
        this.f42687r = relateLayoutApp;
        this.f42688s = rlDownloadState;
        this.f42689t = sdvImage;
        this.f42690u = tvLabel;
        this.f42691v = tvScore;
    }

    @NonNull
    public static o50 bind(@NonNull View rootView) {
        int i10 = R.id.adText;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.adText);
        if (textView != null) {
            i10 = R.id.appSize;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
            if (textView2 != null) {
                i10 = R.id.dv_view;
                DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
                if (downloadNormalView != null) {
                    i10 = R.id.giftPackageSwich;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftPackageSwich);
                    if (imageView != null) {
                        i10 = R.id.iv_mask;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_mask);
                        if (imageView2 != null) {
                            i10 = R.id.iv_mask_solid;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_mask_solid);
                            if (imageView3 != null) {
                                i10 = R.id.line;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                                if (viewFindChildViewById != null) {
                                    i10 = R.id.linearLayout;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                                    if (linearLayout != null) {
                                        i10 = R.id.linearLayout2;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.ll_label;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_label);
                                            if (linearLayout3 != null) {
                                                i10 = R.id.loding_info;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loding_info);
                                                if (textView3 != null) {
                                                    i10 = R.id.mgListviewItemAppname;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemAppname);
                                                    if (textView4 != null) {
                                                        i10 = R.id.mgListviewItemDescribe;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemDescribe);
                                                        if (textView5 != null) {
                                                            i10 = R.id.progressBar;
                                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                            if (progressBar != null) {
                                                                i10 = R.id.progressBarZip;
                                                                ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                                if (progressBar2 != null) {
                                                                    i10 = R.id.relateLayoutApp;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                                                                    if (linearLayout4 != null) {
                                                                        i10 = R.id.rl_download_state;
                                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_download_state);
                                                                        if (relativeLayout != null) {
                                                                            i10 = R.id.sdv_image;
                                                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                                                            if (simpleDraweeView != null) {
                                                                                i10 = R.id.tv_label;
                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label);
                                                                                if (textView6 != null) {
                                                                                    i10 = R.id.tv_score;
                                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_score);
                                                                                    if (textView7 != null) {
                                                                                        return new o50((CardView) rootView, textView, textView2, downloadNormalView, imageView, imageView2, imageView3, viewFindChildViewById, linearLayout, linearLayout2, linearLayout3, textView3, textView4, textView5, progressBar, progressBar2, linearLayout4, relativeLayout, simpleDraweeView, textView6, textView7);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static o50 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f42671b;
    }

    @NonNull
    public static o50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_search_game_list_ad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
