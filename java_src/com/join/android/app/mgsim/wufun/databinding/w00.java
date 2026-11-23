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
public final class w00 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f46529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f46530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f46532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f46533f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46534g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46535h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46536i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46537j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46538k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f46539l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46540m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f46541n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46542o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f46543p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f46544q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f46545r;

    private w00(@NonNull CardView rootView, @NonNull TextView adText, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout llBottomContainer, @NonNull LinearLayout llLabel, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull LinearLayout relateLayoutApp, @NonNull TextView tvLabel, @NonNull TextView tvScore, @NonNull MultiStandVideo wfVideo) {
        this.f46529b = rootView;
        this.f46530c = adText;
        this.f46531d = appSize;
        this.f46532e = dvView;
        this.f46533f = giftPackageSwich;
        this.f46534g = linearLayout;
        this.f46535h = linearLayout2;
        this.f46536i = llBottomContainer;
        this.f46537j = llLabel;
        this.f46538k = lodingInfo;
        this.f46539l = mgListviewItemAppname;
        this.f46540m = progressBar;
        this.f46541n = progressBarZip;
        this.f46542o = relateLayoutApp;
        this.f46543p = tvLabel;
        this.f46544q = tvScore;
        this.f46545r = wfVideo;
    }

    @NonNull
    public static w00 bind(@NonNull View rootView) {
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
                                                                        return new w00((CardView) rootView, textView, textView2, downloadNormalView, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, textView4, progressBar, progressBar2, linearLayout5, textView5, textView6, multiStandVideo);
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
    public static w00 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f46529b;
    }

    @NonNull
    public static w00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_find_mini_game_video, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
