package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import com.youth.banner.Banner;

/* JADX INFO: loaded from: classes4.dex */
public final class gu0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Banner f39006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f39007e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39008f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FlowLayout f39009g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f39010h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final FlowLayout f39011i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39012j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f39013k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39014l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f39015m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TabLayout f39016n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f39017o;

    private gu0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView ad2, @NonNull Banner banner, @NonNull ImageView clearHistoryx, @NonNull LinearLayout clearLayout, @NonNull FlowLayout guessLickFlow, @NonNull TextView guessliketext, @NonNull FlowLayout historyFlow, @NonNull LinearLayout llRecent, @NonNull AppBarLayout searchAppBarLayout, @NonNull LinearLayout searchCollapsibleHeader, @NonNull CollapsingToolbarLayout searchCollapsingToolbar, @NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager) {
        this.f39004b = rootView;
        this.f39005c = ad2;
        this.f39006d = banner;
        this.f39007e = clearHistoryx;
        this.f39008f = clearLayout;
        this.f39009g = guessLickFlow;
        this.f39010h = guessliketext;
        this.f39011i = historyFlow;
        this.f39012j = llRecent;
        this.f39013k = searchAppBarLayout;
        this.f39014l = searchCollapsibleHeader;
        this.f39015m = searchCollapsingToolbar;
        this.f39016n = tabLayout;
        this.f39017o = viewPager;
    }

    @NonNull
    public static gu0 bind(@NonNull View rootView) {
        int i10 = R.id.f35452ad;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.f35452ad);
        if (simpleDraweeView != null) {
            i10 = R.id.banner;
            Banner banner = (Banner) ViewBindings.findChildViewById(rootView, R.id.banner);
            if (banner != null) {
                i10 = R.id.clearHistoryx;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.clearHistoryx);
                if (imageView != null) {
                    i10 = R.id.clearLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.clearLayout);
                    if (linearLayout != null) {
                        i10 = R.id.guessLickFlow;
                        FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.guessLickFlow);
                        if (flowLayout != null) {
                            i10 = R.id.guessliketext;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.guessliketext);
                            if (textView != null) {
                                i10 = R.id.historyFlow;
                                FlowLayout flowLayout2 = (FlowLayout) ViewBindings.findChildViewById(rootView, R.id.historyFlow);
                                if (flowLayout2 != null) {
                                    i10 = R.id.llRecent;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llRecent);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.searchAppBarLayout;
                                        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.searchAppBarLayout);
                                        if (appBarLayout != null) {
                                            i10 = R.id.searchCollapsibleHeader;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.searchCollapsibleHeader);
                                            if (linearLayout3 != null) {
                                                i10 = R.id.searchCollapsingToolbar;
                                                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(rootView, R.id.searchCollapsingToolbar);
                                                if (collapsingToolbarLayout != null) {
                                                    i10 = R.id.tabLayout;
                                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tabLayout);
                                                    if (tabLayout != null) {
                                                        i10 = R.id.viewPager;
                                                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                        if (viewPager2 != null) {
                                                            return new gu0((LinearLayout) rootView, simpleDraweeView, banner, imageView, linearLayout, flowLayout, textView, flowLayout2, linearLayout2, appBarLayout, linearLayout3, collapsingToolbarLayout, tabLayout, viewPager2);
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
    public static gu0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39004b;
    }

    @NonNull
    public static gu0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_recommend_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
