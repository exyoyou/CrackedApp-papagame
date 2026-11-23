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
public final class k60 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f40627d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40628e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f40629f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40630g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40631h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40632i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40633j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40634k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40635l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40636m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40637n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40638o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40639p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f40640q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f40641r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40642s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f40643t;

    private k60(@NonNull RelativeLayout rootView, @NonNull TextView appSize, @NonNull DownloadNormalView dvView, @NonNull ImageView giftPackageSwich, @NonNull View line, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull LinearLayout openTest, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull RelativeLayout relateLayoutApp, @NonNull TextView testTime, @NonNull TextView testType, @NonNull LinearLayout tipsLayout, @NonNull TextView tvLabel1) {
        this.f40625b = rootView;
        this.f40626c = appSize;
        this.f40627d = dvView;
        this.f40628e = giftPackageSwich;
        this.f40629f = line;
        this.f40630g = linearLayout;
        this.f40631h = linearLayout2;
        this.f40632i = lodingInfo;
        this.f40633j = mgListviewItemAppname;
        this.f40634k = mgListviewItemDescribe;
        this.f40635l = mgListviewItemIcon;
        this.f40636m = openTest;
        this.f40637n = progressBar;
        this.f40638o = progressBarZip;
        this.f40639p = relateLayoutApp;
        this.f40640q = testTime;
        this.f40641r = testType;
        this.f40642s = tipsLayout;
        this.f40643t = tvLabel1;
    }

    @NonNull
    public static k60 bind(@NonNull View rootView) {
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
                                                i10 = R.id.openTest;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.openTest);
                                                if (linearLayout3 != null) {
                                                    i10 = R.id.progressBar;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                                    if (progressBar != null) {
                                                        i10 = R.id.progressBarZip;
                                                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                                        if (progressBar2 != null) {
                                                            RelativeLayout relativeLayout = (RelativeLayout) rootView;
                                                            i10 = R.id.testTime;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.testTime);
                                                            if (textView5 != null) {
                                                                i10 = R.id.testType;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.testType);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.tipsLayout;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                    if (linearLayout4 != null) {
                                                                        i10 = R.id.tv_label_1;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_1);
                                                                        if (textView7 != null) {
                                                                            return new k60(relativeLayout, textView, downloadNormalView, imageView, viewFindChildViewById, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, linearLayout3, progressBar, progressBar2, relativeLayout, textView5, textView6, linearLayout4, textView7);
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
    public static k60 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40625b;
    }

    @NonNull
    public static k60 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_simulator_download_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
