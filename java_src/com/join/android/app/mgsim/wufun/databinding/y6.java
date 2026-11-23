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
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.youth.banner.view.BannerViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class y6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CardView f47589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CardView f47591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final BannerViewPager f47594g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47595h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final CardView f47596i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47597j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47598k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47599l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47600m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f47601n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47602o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f47603p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f47604q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final View f47605r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final View f47606s;

    private y6(@NonNull CardView rootView, @NonNull RelativeLayout bannerBottomWrap, @NonNull CardView bannerContainer, @NonNull ImageView bannerDefaultImage, @NonNull TextView bannerTitle, @NonNull BannerViewPager bannerViewPager, @NonNull TextView btnHomeBannerView, @NonNull CardView cardBannerPager, @NonNull LinearLayout circleIndicator, @NonNull LinearLayout indicatorInside, @NonNull LinearLayout llHomeBannerCaption, @NonNull TextView numIndicator, @NonNull TextView numIndicatorInside, @NonNull LinearLayout titleView, @NonNull TextView tvHomeBannerDesc, @NonNull View viewHomeBannerFade, @NonNull View viewHomeBannerFade1, @NonNull View viewHomeBannerFade2) {
        this.f47589b = rootView;
        this.f47590c = bannerBottomWrap;
        this.f47591d = bannerContainer;
        this.f47592e = bannerDefaultImage;
        this.f47593f = bannerTitle;
        this.f47594g = bannerViewPager;
        this.f47595h = btnHomeBannerView;
        this.f47596i = cardBannerPager;
        this.f47597j = circleIndicator;
        this.f47598k = indicatorInside;
        this.f47599l = llHomeBannerCaption;
        this.f47600m = numIndicator;
        this.f47601n = numIndicatorInside;
        this.f47602o = titleView;
        this.f47603p = tvHomeBannerDesc;
        this.f47604q = viewHomeBannerFade;
        this.f47605r = viewHomeBannerFade1;
        this.f47606s = viewHomeBannerFade2;
    }

    @NonNull
    public static y6 bind(@NonNull View rootView) {
        int i10 = R.id.bannerBottomWrap;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.bannerBottomWrap);
        if (relativeLayout != null) {
            CardView cardView = (CardView) rootView;
            i10 = R.id.bannerDefaultImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bannerDefaultImage);
            if (imageView != null) {
                i10 = R.id.bannerTitle;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.bannerTitle);
                if (textView != null) {
                    i10 = R.id.bannerViewPager;
                    BannerViewPager bannerViewPager = (BannerViewPager) ViewBindings.findChildViewById(rootView, R.id.bannerViewPager);
                    if (bannerViewPager != null) {
                        i10 = R.id.btn_home_banner_view;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.btn_home_banner_view);
                        if (textView2 != null) {
                            i10 = R.id.card_banner_pager;
                            CardView cardView2 = (CardView) ViewBindings.findChildViewById(rootView, R.id.card_banner_pager);
                            if (cardView2 != null) {
                                i10 = R.id.circleIndicator;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.circleIndicator);
                                if (linearLayout != null) {
                                    i10 = R.id.indicatorInside;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.indicatorInside);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.ll_home_banner_caption;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_home_banner_caption);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.numIndicator;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.numIndicator);
                                            if (textView3 != null) {
                                                i10 = R.id.numIndicatorInside;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.numIndicatorInside);
                                                if (textView4 != null) {
                                                    i10 = R.id.titleView;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.titleView);
                                                    if (linearLayout4 != null) {
                                                        i10 = R.id.tv_home_banner_desc;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_home_banner_desc);
                                                        if (textView5 != null) {
                                                            i10 = R.id.view_home_banner_fade;
                                                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view_home_banner_fade);
                                                            if (viewFindChildViewById != null) {
                                                                i10 = R.id.view_home_banner_fade_1;
                                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.view_home_banner_fade_1);
                                                                if (viewFindChildViewById2 != null) {
                                                                    i10 = R.id.view_home_banner_fade_2;
                                                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.view_home_banner_fade_2);
                                                                    if (viewFindChildViewById3 != null) {
                                                                        return new y6(cardView, relativeLayout, cardView, imageView, textView, bannerViewPager, textView2, cardView2, linearLayout, linearLayout2, linearLayout3, textView3, textView4, linearLayout4, textView5, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3);
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
    public static y6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CardView getRoot() {
        return this.f47589b;
    }

    @NonNull
    public static y6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.banner_papa_main_home_v4, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
