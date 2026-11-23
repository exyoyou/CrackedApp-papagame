package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class gx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39040d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f39041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f39042f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f39043g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f39044h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39045i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39046j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39047k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f39048l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39049m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f39050n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39051o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ProgressBar f39052p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ProgressBar f39053q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39054r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39055s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final FrameLayout f39056t;

    private gx0(@NonNull LinearLayout rootView, @NonNull TextView appSize, @NonNull SimpleDraweeView bannerView, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull View line, @NonNull View lineTop, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView loading, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull LinearLayout relateLayoutApp, @NonNull LinearLayout tipsLayout, @NonNull FrameLayout videoContner) {
        this.f39038b = rootView;
        this.f39039c = appSize;
        this.f39040d = bannerView;
        this.f39041e = dvView;
        this.f39042f = giftPackageSwich;
        this.f39043g = line;
        this.f39044h = lineTop;
        this.f39045i = linearLayout;
        this.f39046j = linearLayout2;
        this.f39047k = loading;
        this.f39048l = lodingInfo;
        this.f39049m = mgListviewItemAppname;
        this.f39050n = mgListviewItemDescribe;
        this.f39051o = mgListviewItemIcon;
        this.f39052p = progressBar;
        this.f39053q = progressBarZip;
        this.f39054r = relateLayoutApp;
        this.f39055s = tipsLayout;
        this.f39056t = videoContner;
    }

    @NonNull
    public static gx0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.bannerView;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.bannerView);
            if (simpleDraweeView != null) {
                i10 = R.id.dv_view;
                DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
                if (downloadNormalView != null) {
                    i10 = R.id.giftPackageSwich;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftPackageSwich);
                    if (imageView != null) {
                        i10 = R.id.line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.line_top;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.line_top);
                            if (viewFindChildViewById2 != null) {
                                i10 = R.id.linearLayout;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                                if (linearLayout != null) {
                                    i10 = R.id.linearLayout2;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.loading;
                                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                                        if (simpleDraweeView2 != null) {
                                            i10 = R.id.loding_info;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loding_info);
                                            if (textView2 != null) {
                                                i10 = R.id.mgListviewItemAppname;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemAppname);
                                                if (textView3 != null) {
                                                    i10 = R.id.mgListviewItemDescribe;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemDescribe);
                                                    if (textView4 != null) {
                                                        i10 = R.id.mgListviewItemIcon;
                                                        SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemIcon);
                                                        if (simpleDraweeView3 != null) {
                                                            i10 = R.id.progressBar;
                                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                            if (progressBar != null) {
                                                                i10 = R.id.progressBarZip;
                                                                ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                                if (progressBar2 != null) {
                                                                    i10 = R.id.relateLayoutApp;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.tipsLayout;
                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                        if (linearLayout4 != null) {
                                                                            i10 = R.id.videoContner;
                                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContner);
                                                                            if (frameLayout != null) {
                                                                                return new gx0((LinearLayout) rootView, textView, simpleDraweeView, downloadNormalView, imageView, viewFindChildViewById, viewFindChildViewById2, linearLayout, linearLayout2, simpleDraweeView2, textView2, textView3, textView4, simpleDraweeView3, progressBar, progressBar2, linearLayout3, linearLayout4, frameLayout);
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
    public static gx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39038b;
    }

    @NonNull
    public static gx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.video_listview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
