package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class e60 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f37803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f37806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f37807f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37808g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37810i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37811j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37812k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37813l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f37814m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f37815n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37816o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f37817p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f37818q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f37819r;

    private e60(@NonNull CardView rootView, @NonNull TextView adText, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout llBottomContainer, @NonNull LinearLayout llLabel, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull LinearLayout relateLayoutApp, @NonNull TextView tvLabel, @NonNull TextView tvScore, @NonNull MultiStandVideo wfVideo) {
        this.f37803b = rootView;
        this.f37804c = adText;
        this.f37805d = appSize;
        this.f37806e = dvView;
        this.f37807f = giftPackageSwich;
        this.f37808g = linearLayout;
        this.f37809h = linearLayout2;
        this.f37810i = llBottomContainer;
        this.f37811j = llLabel;
        this.f37812k = lodingInfo;
        this.f37813l = mgListviewItemAppname;
        this.f37814m = progressBar;
        this.f37815n = progressBarZip;
        this.f37816o = relateLayoutApp;
        this.f37817p = tvLabel;
        this.f37818q = tvScore;
        this.f37819r = wfVideo;
    }

    @NonNull
    public static e60 bind(@NonNull View rootView) {
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
                        i10 = R.id.linearLayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                        if (linearLayout != null) {
                            i10 = R.id.linearLayout2;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                            if (linearLayout2 != null) {
                                i10 = R.id.ll_bottom_container;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_bottom_container);
                                if (linearLayout3 != null) {
                                    i10 = R.id.ll_label;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_label);
                                    if (linearLayout4 != null) {
                                        i10 = R.id.loding_info;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loding_info);
                                        if (textView3 != null) {
                                            i10 = R.id.mgListviewItemAppname;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemAppname);
                                            if (textView4 != null) {
                                                i10 = R.id.progressBar;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                if (progressBar != null) {
                                                    i10 = R.id.progressBarZip;
                                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                    if (progressBar2 != null) {
                                                        i10 = R.id.relateLayoutApp;
                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                                                        if (linearLayout5 != null) {
                                                            i10 = R.id.tv_label;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label);
                                                            if (textView5 != null) {
                                                                i10 = R.id.tv_score;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_score);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.wf_video;
                                                                    MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(rootView, R.id.wf_video);
                                                                    if (multiStandVideo != null) {
                                                                        return new e60((CardView) rootView, textView, textView2, downloadNormalView, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, textView4, progressBar, progressBar2, linearLayout5, textView5, textView6, multiStandVideo);
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
    public static e60 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f37803b;
    }

    @NonNull
    public static e60 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_search_mini_game_video_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
