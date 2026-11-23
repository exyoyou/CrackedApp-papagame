package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yi implements ViewBinding {

    @NonNull
    public final TextView A;

    @NonNull
    public final hw0 B;

    @NonNull
    public final TextView C;

    @NonNull
    public final RelativeLayout D;

    @NonNull
    public final ImageView E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47742f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47743g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f47744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47745i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47746j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47747k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47748l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47749m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f47750n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ImageView f47751o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f47752p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f47753q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f47754r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47755s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47756t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47757u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f47758v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f47759w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f47760x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f47761y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f47762z;

    private yi(@NonNull LinearLayout rootView, @NonNull RelativeLayout accountManager, @NonNull ImageView arrowImage, @NonNull ImageView autoDownImageViewWifi, @NonNull RelativeLayout autoDownLayoutWifi, @NonNull RelativeLayout autoDownloadWifi, @NonNull ImageView autoPlayVideoWifi, @NonNull TextView cc2, @NonNull RelativeLayout checkVerLayout, @NonNull RelativeLayout downloadPath, @NonNull LinearLayout exitLogin, @NonNull RelativeLayout gprsNotice, @NonNull ImageView imageGprsNote, @NonNull ImageView imageViewWifi, @NonNull ImageView ivDevMore, @NonNull TextView nowPathInfo, @NonNull TextView papaVer, @NonNull RelativeLayout pusghAd, @NonNull RelativeLayout pushLayout, @NonNull RelativeLayout rlDeveloper, @NonNull TextView sss, @NonNull TextView textGprs, @NonNull TextView textView4, @NonNull TextView textView58, @NonNull TextView textView6, @NonNull TextView textWifi, @NonNull hw0 titleBarLayout, @NonNull TextView tvDev, @NonNull RelativeLayout videoPlaySetting, @NonNull ImageView x10) {
        this.f47738b = rootView;
        this.f47739c = accountManager;
        this.f47740d = arrowImage;
        this.f47741e = autoDownImageViewWifi;
        this.f47742f = autoDownLayoutWifi;
        this.f47743g = autoDownloadWifi;
        this.f47744h = autoPlayVideoWifi;
        this.f47745i = cc2;
        this.f47746j = checkVerLayout;
        this.f47747k = downloadPath;
        this.f47748l = exitLogin;
        this.f47749m = gprsNotice;
        this.f47750n = imageGprsNote;
        this.f47751o = imageViewWifi;
        this.f47752p = ivDevMore;
        this.f47753q = nowPathInfo;
        this.f47754r = papaVer;
        this.f47755s = pusghAd;
        this.f47756t = pushLayout;
        this.f47757u = rlDeveloper;
        this.f47758v = sss;
        this.f47759w = textGprs;
        this.f47760x = textView4;
        this.f47761y = textView58;
        this.f47762z = textView6;
        this.A = textWifi;
        this.B = titleBarLayout;
        this.C = tvDev;
        this.D = videoPlaySetting;
        this.E = x10;
    }

    @NonNull
    public static yi bind(@NonNull View rootView) {
        int i10 = R.id.accountManager;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.accountManager);
        if (relativeLayout != null) {
            i10 = R.id.arrowImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrowImage);
            if (imageView != null) {
                i10 = R.id.autoDownImageViewWifi;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.autoDownImageViewWifi);
                if (imageView2 != null) {
                    i10 = R.id.autoDownLayoutWifi;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.autoDownLayoutWifi);
                    if (relativeLayout2 != null) {
                        i10 = R.id.autoDownloadWifi;
                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.autoDownloadWifi);
                        if (relativeLayout3 != null) {
                            i10 = R.id.autoPlayVideoWifi;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.autoPlayVideoWifi);
                            if (imageView3 != null) {
                                i10 = R.id.f35455cc;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.f35455cc);
                                if (textView != null) {
                                    i10 = R.id.checkVerLayout;
                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.checkVerLayout);
                                    if (relativeLayout4 != null) {
                                        i10 = R.id.downloadPath;
                                        RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.downloadPath);
                                        if (relativeLayout5 != null) {
                                            i10 = R.id.exitLogin;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.exitLogin);
                                            if (linearLayout != null) {
                                                i10 = R.id.gprsNotice;
                                                RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.gprsNotice);
                                                if (relativeLayout6 != null) {
                                                    i10 = R.id.imageGprsNote;
                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageGprsNote);
                                                    if (imageView4 != null) {
                                                        i10 = R.id.imageViewWifi;
                                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageViewWifi);
                                                        if (imageView5 != null) {
                                                            i10 = R.id.iv_dev_more;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_dev_more);
                                                            if (imageView6 != null) {
                                                                i10 = R.id.nowPathInfo;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nowPathInfo);
                                                                if (textView2 != null) {
                                                                    i10 = R.id.papaVer;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.papaVer);
                                                                    if (textView3 != null) {
                                                                        i10 = R.id.pusghAd;
                                                                        RelativeLayout relativeLayout7 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.pusghAd);
                                                                        if (relativeLayout7 != null) {
                                                                            i10 = R.id.pushLayout;
                                                                            RelativeLayout relativeLayout8 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.pushLayout);
                                                                            if (relativeLayout8 != null) {
                                                                                i10 = R.id.rl_developer;
                                                                                RelativeLayout relativeLayout9 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_developer);
                                                                                if (relativeLayout9 != null) {
                                                                                    i10 = R.id.sss;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sss);
                                                                                    if (textView4 != null) {
                                                                                        i10 = R.id.textGprs;
                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textGprs);
                                                                                        if (textView5 != null) {
                                                                                            i10 = R.id.textView4;
                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView4);
                                                                                            if (textView6 != null) {
                                                                                                i10 = R.id.textView58;
                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView58);
                                                                                                if (textView7 != null) {
                                                                                                    i10 = R.id.textView6;
                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView6);
                                                                                                    if (textView8 != null) {
                                                                                                        i10 = R.id.textWifi;
                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textWifi);
                                                                                                        if (textView9 != null) {
                                                                                                            i10 = R.id.title_bar_layout;
                                                                                                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.title_bar_layout);
                                                                                                            if (viewFindChildViewById != null) {
                                                                                                                hw0 hw0VarBind = hw0.bind(viewFindChildViewById);
                                                                                                                i10 = R.id.tv_dev;
                                                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_dev);
                                                                                                                if (textView10 != null) {
                                                                                                                    i10 = R.id.videoPlaySetting;
                                                                                                                    RelativeLayout relativeLayout10 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.videoPlaySetting);
                                                                                                                    if (relativeLayout10 != null) {
                                                                                                                        i10 = R.id.f35491x;
                                                                                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.f35491x);
                                                                                                                        if (imageView7 != null) {
                                                                                                                            return new yi((LinearLayout) rootView, relativeLayout, imageView, imageView2, relativeLayout2, relativeLayout3, imageView3, textView, relativeLayout4, relativeLayout5, linearLayout, relativeLayout6, imageView4, imageView5, imageView6, textView2, textView3, relativeLayout7, relativeLayout8, relativeLayout9, textView4, textView5, textView6, textView7, textView8, textView9, hw0VarBind, textView10, relativeLayout10, imageView7);
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
    public static yi inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47738b;
    }

    @NonNull
    public static yi inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.download_setting_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
