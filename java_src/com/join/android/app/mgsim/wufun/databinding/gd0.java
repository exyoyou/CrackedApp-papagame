package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.NestedScrollableHost;

/* JADX INFO: loaded from: classes4.dex */
public final class gd0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f38800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f38801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f38802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f38803f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38804g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38805h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38806i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f38807j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f38808k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f38809l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38810m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38811n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final CardView f38812o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38813p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final FrameLayout f38814q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final NestedScrollableHost f38815r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TabLayout f38816s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f38817t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f38818u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f38819v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f38820w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final MultiStandVideo f38821x;

    private gd0(@NonNull LinearLayout rootView, @NonNull AppBarLayout appBarLayout, @NonNull CollapsingToolbarLayout collapsingToolbar, @NonNull CoordinatorLayout coordinatorContent, @NonNull DownloadNormalView dvFeaturedGame, @NonNull SimpleDraweeView headerVideoLoading, @NonNull SimpleDraweeView ivGameIcon, @NonNull SimpleDraweeView ivHeaderBanner, @NonNull ImageView ivServerReminderArrow, @NonNull ImageView ivServerReminderWechat, @NonNull ConstraintLayout layoutFeaturedGame, @NonNull LinearLayout layoutGameTags, @NonNull RelativeLayout layoutHeaderBanner, @NonNull CardView layoutHeaderFixed, @NonNull LinearLayout layoutServerReminder, @NonNull FrameLayout loadContent, @NonNull NestedScrollableHost tabHost, @NonNull TabLayout tablayout, @NonNull TextView tvGameDesc, @NonNull TextView tvGameName, @NonNull TextView tvServerReminder, @NonNull ViewPager2 viewPager, @NonNull MultiStandVideo wfHeaderVideo) {
        this.f38799b = rootView;
        this.f38800c = appBarLayout;
        this.f38801d = collapsingToolbar;
        this.f38802e = coordinatorContent;
        this.f38803f = dvFeaturedGame;
        this.f38804g = headerVideoLoading;
        this.f38805h = ivGameIcon;
        this.f38806i = ivHeaderBanner;
        this.f38807j = ivServerReminderArrow;
        this.f38808k = ivServerReminderWechat;
        this.f38809l = layoutFeaturedGame;
        this.f38810m = layoutGameTags;
        this.f38811n = layoutHeaderBanner;
        this.f38812o = layoutHeaderFixed;
        this.f38813p = layoutServerReminder;
        this.f38814q = loadContent;
        this.f38815r = tabHost;
        this.f38816s = tablayout;
        this.f38817t = tvGameDesc;
        this.f38818u = tvGameName;
        this.f38819v = tvServerReminder;
        this.f38820w = viewPager;
        this.f38821x = wfHeaderVideo;
    }

    @NonNull
    public static gd0 bind(@NonNull View rootView) {
        int i10 = R.id.appBarLayout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appBarLayout);
        if (appBarLayout != null) {
            i10 = R.id.collapsingToolbar;
            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(rootView, R.id.collapsingToolbar);
            if (collapsingToolbarLayout != null) {
                i10 = R.id.coordinatorContent;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.coordinatorContent);
                if (coordinatorLayout != null) {
                    i10 = R.id.dvFeaturedGame;
                    DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dvFeaturedGame);
                    if (downloadNormalView != null) {
                        i10 = R.id.headerVideoLoading;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.headerVideoLoading);
                        if (simpleDraweeView != null) {
                            i10 = R.id.ivGameIcon;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGameIcon);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.ivHeaderBanner;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivHeaderBanner);
                                if (simpleDraweeView3 != null) {
                                    i10 = R.id.ivServerReminderArrow;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivServerReminderArrow);
                                    if (imageView != null) {
                                        i10 = R.id.ivServerReminderWechat;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivServerReminderWechat);
                                        if (imageView2 != null) {
                                            i10 = R.id.layoutFeaturedGame;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.layoutFeaturedGame);
                                            if (constraintLayout != null) {
                                                i10 = R.id.layoutGameTags;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutGameTags);
                                                if (linearLayout != null) {
                                                    i10 = R.id.layoutHeaderBanner;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.layoutHeaderBanner);
                                                    if (relativeLayout != null) {
                                                        i10 = R.id.layoutHeaderFixed;
                                                        CardView cardView = (CardView) ViewBindings.findChildViewById(rootView, R.id.layoutHeaderFixed);
                                                        if (cardView != null) {
                                                            i10 = R.id.layoutServerReminder;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutServerReminder);
                                                            if (linearLayout2 != null) {
                                                                i10 = R.id.loadContent;
                                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.loadContent);
                                                                if (frameLayout != null) {
                                                                    i10 = R.id.tabHost;
                                                                    NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) ViewBindings.findChildViewById(rootView, R.id.tabHost);
                                                                    if (nestedScrollableHost != null) {
                                                                        i10 = R.id.tablayout;
                                                                        TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
                                                                        if (tabLayout != null) {
                                                                            i10 = R.id.tvGameDesc;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameDesc);
                                                                            if (textView != null) {
                                                                                i10 = R.id.tvGameName;
                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                                                                                if (textView2 != null) {
                                                                                    i10 = R.id.tvServerReminder;
                                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvServerReminder);
                                                                                    if (textView3 != null) {
                                                                                        i10 = R.id.viewPager;
                                                                                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                                                        if (viewPager2 != null) {
                                                                                            i10 = R.id.wfHeaderVideo;
                                                                                            MultiStandVideo multiStandVideo = (MultiStandVideo) ViewBindings.findChildViewById(rootView, R.id.wfHeaderVideo);
                                                                                            if (multiStandVideo != null) {
                                                                                                return new gd0((LinearLayout) rootView, appBarLayout, collapsingToolbarLayout, coordinatorLayout, downloadNormalView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, imageView, imageView2, constraintLayout, linearLayout, relativeLayout, cardView, linearLayout2, frameLayout, nestedScrollableHost, tabLayout, textView, textView2, textView3, viewPager2, multiStandVideo);
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
    public static gd0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38799b;
    }

    @NonNull
    public static gd0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.legend_game_category_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
