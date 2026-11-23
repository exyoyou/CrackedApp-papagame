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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class z9 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f48121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f48122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f48123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f48124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f48125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f48126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f48127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48128i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48129j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f48130k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f48131l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f48132m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48133n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ProgressBar f48134o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ProgressBar f48135p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48136q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48137r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f48138s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48139t;

    private z9(@NonNull LinearLayout rootView, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull ImageView ivNumber, @NonNull View line, @NonNull View lineTop, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull RelativeLayout relateLayoutApp, @NonNull LinearLayout tipsLayout, @NonNull TextView tvNumber, @NonNull RelativeLayout tvNumberRl) {
        this.f48121b = rootView;
        this.f48122c = appSize;
        this.f48123d = dvView;
        this.f48124e = giftPackageSwich;
        this.f48125f = ivNumber;
        this.f48126g = line;
        this.f48127h = lineTop;
        this.f48128i = linearLayout;
        this.f48129j = linearLayout2;
        this.f48130k = lodingInfo;
        this.f48131l = mgListviewItemAppname;
        this.f48132m = mgListviewItemDescribe;
        this.f48133n = mgListviewItemIcon;
        this.f48134o = progressBar;
        this.f48135p = progressBarZip;
        this.f48136q = relateLayoutApp;
        this.f48137r = tipsLayout;
        this.f48138s = tvNumber;
        this.f48139t = tvNumberRl;
    }

    @NonNull
    public static z9 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.dv_view;
            DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
            if (downloadNormalView != null) {
                i10 = R.id.giftPackageSwich;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.giftPackageSwich);
                if (imageView != null) {
                    i10 = R.id.ivNumber;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivNumber);
                    if (imageView2 != null) {
                        i10 = R.id.line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.lineTop;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.lineTop);
                            if (viewFindChildViewById2 != null) {
                                i10 = R.id.linearLayout;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                                if (linearLayout != null) {
                                    i10 = R.id.linearLayout2;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                                    if (linearLayout2 != null) {
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
                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemIcon);
                                                    if (simpleDraweeView != null) {
                                                        i10 = R.id.progressBar;
                                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                        if (progressBar != null) {
                                                            i10 = R.id.progressBarZip;
                                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                            if (progressBar2 != null) {
                                                                i10 = R.id.relateLayoutApp;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                                                                if (relativeLayout != null) {
                                                                    i10 = R.id.tipsLayout;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.tvNumber;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvNumber);
                                                                        if (textView5 != null) {
                                                                            i10 = R.id.tvNumberRl;
                                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.tvNumberRl);
                                                                            if (relativeLayout2 != null) {
                                                                                return new z9((LinearLayout) rootView, textView, downloadNormalView, imageView, imageView2, viewFindChildViewById, viewFindChildViewById2, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, progressBar, progressBar2, relativeLayout, linearLayout3, textView5, relativeLayout2);
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
    public static z9 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f48121b;
    }

    @NonNull
    public static z9 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.classify_listview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
