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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class p50 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f43232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43234d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f43235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f43236f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43237g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43239i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43240j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43241k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43242l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43243m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f43244n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43245o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43246p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f43247q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f43248r;

    private p50(@NonNull CardView rootView, @NonNull TextView adText, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout llLabel, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull LinearLayout relateLayoutApp, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvLabel, @NonNull TextView tvScore) {
        this.f43232b = rootView;
        this.f43233c = adText;
        this.f43234d = appSize;
        this.f43235e = dvView;
        this.f43236f = giftPackageSwich;
        this.f43237g = linearLayout;
        this.f43238h = linearLayout2;
        this.f43239i = llLabel;
        this.f43240j = lodingInfo;
        this.f43241k = mgListviewItemAppname;
        this.f43242l = mgListviewItemDescribe;
        this.f43243m = progressBar;
        this.f43244n = progressBarZip;
        this.f43245o = relateLayoutApp;
        this.f43246p = sdvImage;
        this.f43247q = tvLabel;
        this.f43248r = tvScore;
    }

    @NonNull
    public static p50 bind(@NonNull View rootView) {
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
                                                            i10 = R.id.sdv_image;
                                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                                            if (simpleDraweeView != null) {
                                                                i10 = R.id.tv_label;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.tv_score;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_score);
                                                                    if (textView7 != null) {
                                                                        return new p50((CardView) rootView, textView, textView2, downloadNormalView, imageView, linearLayout, linearLayout2, linearLayout3, textView3, textView4, textView5, progressBar, progressBar2, linearLayout4, simpleDraweeView, textView6, textView7);
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
    public static p50 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f43232b;
    }

    @NonNull
    public static p50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_search_game_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
