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
public final class ju0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f40430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f40432f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40433g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40434h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40435i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40436j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40437k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40438l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40439m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40440n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40441o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f40442p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40443q;

    private ju0(@NonNull RelativeLayout rootView, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull View line, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull RelativeLayout relateLayoutApp, @NonNull TextView tipSText, @NonNull LinearLayout tipsLayout) {
        this.f40428b = rootView;
        this.f40429c = appSize;
        this.f40430d = dvView;
        this.f40431e = giftPackageSwich;
        this.f40432f = line;
        this.f40433g = linearLayout;
        this.f40434h = linearLayout2;
        this.f40435i = lodingInfo;
        this.f40436j = mgListviewItemAppname;
        this.f40437k = mgListviewItemDescribe;
        this.f40438l = mgListviewItemIcon;
        this.f40439m = progressBar;
        this.f40440n = progressBarZip;
        this.f40441o = relateLayoutApp;
        this.f40442p = tipSText;
        this.f40443q = tipsLayout;
    }

    @NonNull
    public static ju0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
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
                                                        RelativeLayout relativeLayout = (RelativeLayout) rootView;
                                                        i10 = R.id.tipSText;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tipSText);
                                                        if (textView5 != null) {
                                                            i10 = R.id.tipsLayout;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                            if (linearLayout3 != null) {
                                                                return new ju0(relativeLayout, textView, downloadNormalView, imageView, viewFindChildViewById, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, progressBar, progressBar2, relativeLayout, textView5, linearLayout3);
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
    public static ju0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40428b;
    }

    @NonNull
    public static ju0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.searchauto_app_listview_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
