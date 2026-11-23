package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class uk0 implements ViewBinding {

    @NonNull
    public final RelativeLayout A;

    @NonNull
    public final TextView B;

    @NonNull
    public final LinearLayout C;

    @NonNull
    public final WebView D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45732d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45733e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ProgressBar f45734f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f45735g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45736h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45737i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45738j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ViewPager f45739k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f45740l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45741m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Button f45742n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f45743o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final CirclePageIndicator f45744p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final Button f45745q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45746r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final Button f45747s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f45748t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f45749u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45750v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45751w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final ScrollView f45752x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final ImageView f45753y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45754z;

    private uk0(@NonNull RelativeLayout rootView, @NonNull TextView appName, @NonNull LinearLayout appinfo, @NonNull RelativeLayout bottomLayout, @NonNull ProgressBar butnProgressBar, @NonNull ImageView butnShowdownload, @NonNull LinearLayout detialDownBottom, @NonNull SimpleDraweeView detialIconImage, @NonNull RelativeLayout detialMainLayout, @NonNull ViewPager detialMiniViewpager, @NonNull TextView downCountAndSize, @NonNull RelativeLayout downloadRLayout, @NonNull Button fourmButn, @NonNull TextView iWillUp, @NonNull CirclePageIndicator indecater, @NonNull Button instalButtomButn, @NonNull RelativeLayout instalbutnLayout, @NonNull Button installButn, @NonNull ImageView lodingBack, @NonNull TextView percent, @NonNull LinearLayout progressLayout, @NonNull RelativeLayout progressbarLayout, @NonNull ScrollView scrollView, @NonNull ImageView shareBtn, @NonNull LinearLayout shareLayout, @NonNull RelativeLayout shareRLayout, @NonNull TextView shareUser, @NonNull LinearLayout tipsLayout, @NonNull WebView webView) {
        this.f45730b = rootView;
        this.f45731c = appName;
        this.f45732d = appinfo;
        this.f45733e = bottomLayout;
        this.f45734f = butnProgressBar;
        this.f45735g = butnShowdownload;
        this.f45736h = detialDownBottom;
        this.f45737i = detialIconImage;
        this.f45738j = detialMainLayout;
        this.f45739k = detialMiniViewpager;
        this.f45740l = downCountAndSize;
        this.f45741m = downloadRLayout;
        this.f45742n = fourmButn;
        this.f45743o = iWillUp;
        this.f45744p = indecater;
        this.f45745q = instalButtomButn;
        this.f45746r = instalbutnLayout;
        this.f45747s = installButn;
        this.f45748t = lodingBack;
        this.f45749u = percent;
        this.f45750v = progressLayout;
        this.f45751w = progressbarLayout;
        this.f45752x = scrollView;
        this.f45753y = shareBtn;
        this.f45754z = shareLayout;
        this.A = shareRLayout;
        this.B = shareUser;
        this.C = tipsLayout;
        this.D = webView;
    }

    @NonNull
    public static uk0 bind(@NonNull View rootView) {
        int i10 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
        if (textView != null) {
            i10 = R.id.appinfo;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.appinfo);
            if (linearLayout != null) {
                i10 = R.id.bottomLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.bottomLayout);
                if (relativeLayout != null) {
                    i10 = R.id.butnProgressBar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.butnProgressBar);
                    if (progressBar != null) {
                        i10 = R.id.butn_showdownload;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.butn_showdownload);
                        if (imageView != null) {
                            i10 = R.id.detialDownBottom;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.detialDownBottom);
                            if (linearLayout2 != null) {
                                i10 = R.id.detialIconImage;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.detialIconImage);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.detial_main_layout;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.detial_main_layout);
                                    if (relativeLayout2 != null) {
                                        i10 = R.id.detial_mini_viewpager;
                                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.detial_mini_viewpager);
                                        if (viewPager != null) {
                                            i10 = R.id.downCountAndSize;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.downCountAndSize);
                                            if (textView2 != null) {
                                                i10 = R.id.downloadRLayout;
                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.downloadRLayout);
                                                if (relativeLayout3 != null) {
                                                    i10 = R.id.fourmButn;
                                                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.fourmButn);
                                                    if (button != null) {
                                                        i10 = R.id.iWillUp;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.iWillUp);
                                                        if (textView3 != null) {
                                                            i10 = R.id.indecater;
                                                            CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(rootView, R.id.indecater);
                                                            if (circlePageIndicator != null) {
                                                                i10 = R.id.instalButtomButn;
                                                                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.instalButtomButn);
                                                                if (button2 != null) {
                                                                    i10 = R.id.instalbutnLayout;
                                                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.instalbutnLayout);
                                                                    if (relativeLayout4 != null) {
                                                                        i10 = R.id.installButn;
                                                                        Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.installButn);
                                                                        if (button3 != null) {
                                                                            i10 = R.id.loding_back;
                                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.loding_back);
                                                                            if (imageView2 != null) {
                                                                                i10 = R.id.percent;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.percent);
                                                                                if (textView4 != null) {
                                                                                    i10 = R.id.progress_layout;
                                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.progress_layout);
                                                                                    if (linearLayout3 != null) {
                                                                                        i10 = R.id.progressbarLayout;
                                                                                        RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.progressbarLayout);
                                                                                        if (relativeLayout5 != null) {
                                                                                            i10 = R.id.scrollView;
                                                                                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
                                                                                            if (scrollView != null) {
                                                                                                i10 = R.id.shareBtn;
                                                                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.shareBtn);
                                                                                                if (imageView3 != null) {
                                                                                                    i10 = R.id.shareLayout;
                                                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.shareLayout);
                                                                                                    if (linearLayout4 != null) {
                                                                                                        i10 = R.id.shareRLayout;
                                                                                                        RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.shareRLayout);
                                                                                                        if (relativeLayout6 != null) {
                                                                                                            i10 = R.id.shareUser;
                                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.shareUser);
                                                                                                            if (textView5 != null) {
                                                                                                                i10 = R.id.tipsLayout;
                                                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                                                                                if (linearLayout5 != null) {
                                                                                                                    i10 = R.id.webView;
                                                                                                                    WebView webView = (WebView) ViewBindings.findChildViewById(rootView, R.id.webView);
                                                                                                                    if (webView != null) {
                                                                                                                        return new uk0((RelativeLayout) rootView, textView, linearLayout, relativeLayout, progressBar, imageView, linearLayout2, simpleDraweeView, relativeLayout2, viewPager, textView2, relativeLayout3, button, textView3, circlePageIndicator, button2, relativeLayout4, button3, imageView2, textView4, linearLayout3, relativeLayout5, scrollView, imageView3, linearLayout4, relativeLayout6, textView5, linearLayout5, webView);
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
    public static uk0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45730b;
    }

    @NonNull
    public static uk0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_mini_detial_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
