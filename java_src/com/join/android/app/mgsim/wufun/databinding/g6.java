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
public final class g6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f38726e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f38727f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f38728g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38729h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38730i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f38731j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f38732k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f38733l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38734m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38735n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ProgressBar f38736o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38737p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38738q;

    private g6(@NonNull RelativeLayout rootView, @NonNull TextView adText, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull View line, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull RelativeLayout relateLayoutApp, @NonNull LinearLayout tipsLayout) {
        this.f38723b = rootView;
        this.f38724c = adText;
        this.f38725d = appSize;
        this.f38726e = dvView;
        this.f38727f = giftPackageSwich;
        this.f38728g = line;
        this.f38729h = linearLayout;
        this.f38730i = linearLayout2;
        this.f38731j = lodingInfo;
        this.f38732k = mgListviewItemAppname;
        this.f38733l = mgListviewItemDescribe;
        this.f38734m = mgListviewItemIcon;
        this.f38735n = progressBar;
        this.f38736o = progressBarZip;
        this.f38737p = relateLayoutApp;
        this.f38738q = tipsLayout;
    }

    @NonNull
    public static g6 bind(@NonNull View rootView) {
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
                        i10 = R.id.line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.linearLayout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
                            if (linearLayout != null) {
                                i10 = R.id.linearLayout2;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                                if (linearLayout2 != null) {
                                    i10 = R.id.loding_info;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.loding_info);
                                    if (textView3 != null) {
                                        i10 = R.id.mgListviewItemAppname;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemAppname);
                                        if (textView4 != null) {
                                            i10 = R.id.mgListviewItemDescribe;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemDescribe);
                                            if (textView5 != null) {
                                                i10 = R.id.mgListviewItemIcon;
                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemIcon);
                                                if (simpleDraweeView != null) {
                                                    i10 = R.id.progressBar;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                    if (progressBar != null) {
                                                        i10 = R.id.progressBarZip;
                                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                        if (progressBar2 != null) {
                                                            RelativeLayout relativeLayout = (RelativeLayout) rootView;
                                                            i10 = R.id.tipsLayout;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                            if (linearLayout3 != null) {
                                                                return new g6(relativeLayout, textView, textView2, downloadNormalView, imageView, viewFindChildViewById, linearLayout, linearLayout2, textView3, textView4, textView5, simpleDraweeView, progressBar, progressBar2, relativeLayout, linearLayout3);
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
    public static g6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38723b;
    }

    @NonNull
    public static g6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.app_listview_item1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
