package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingImageView;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.customview.SlidingTabLayoutNoViewPager;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;

/* JADX INFO: loaded from: classes4.dex */
public final class m implements ViewBinding {

    @NonNull
    public final SlidingTabLayoutNoViewPager A;

    @NonNull
    public final TextView B;

    @NonNull
    public final TextView C;

    @NonNull
    public final Toolbar D;

    @NonNull
    public final ImageView E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f41627d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f41628e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41629f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f41630g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41631h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LoadingImageView f41632i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f41633j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41634k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41635l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LoadingLayout f41636m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41637n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f41638o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41639p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f41640q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f41641r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final SwipeRefresh f41642s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f41643t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f41644u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f41645v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final Button f41646w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f41647x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayoutNoViewPager f41648y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayoutNoViewPager f41649z;

    private m(@NonNull RelativeLayout rootView, @NonNull LinearLayout activityClassifyGame, @NonNull AppBarLayout appbar, @NonNull CollapsingToolbarLayout colltoobar, @NonNull TextView failedMessage, @NonNull View line, @NonNull LinearLayout loadingNone, @NonNull LoadingImageView loadingView, @NonNull ImageView lodingBackImage, @NonNull LinearLayout lodingFaile, @NonNull LinearLayout lodingLayout, @NonNull LoadingLayout mLoadingLayout, @NonNull FrameLayout mViewpagerV4, @NonNull CoordinatorLayout mainContent, @NonNull LinearLayout nodataLayout, @NonNull TextView noneMessage, @NonNull ImageView noneReloadImage, @NonNull SwipeRefresh refreshx, @NonNull ImageView relodingimag, @NonNull TextView selectedType, @NonNull TextView setAll, @NonNull Button setNetwork, @NonNull TextView setting, @NonNull SlidingTabLayoutNoViewPager table1, @NonNull SlidingTabLayoutNoViewPager table2, @NonNull SlidingTabLayoutNoViewPager table3, @NonNull TextView textView2, @NonNull TextView textViewNodata, @NonNull Toolbar toolbar, @NonNull ImageView topImag) {
        this.f41625b = rootView;
        this.f41626c = activityClassifyGame;
        this.f41627d = appbar;
        this.f41628e = colltoobar;
        this.f41629f = failedMessage;
        this.f41630g = line;
        this.f41631h = loadingNone;
        this.f41632i = loadingView;
        this.f41633j = lodingBackImage;
        this.f41634k = lodingFaile;
        this.f41635l = lodingLayout;
        this.f41636m = mLoadingLayout;
        this.f41637n = mViewpagerV4;
        this.f41638o = mainContent;
        this.f41639p = nodataLayout;
        this.f41640q = noneMessage;
        this.f41641r = noneReloadImage;
        this.f41642s = refreshx;
        this.f41643t = relodingimag;
        this.f41644u = selectedType;
        this.f41645v = setAll;
        this.f41646w = setNetwork;
        this.f41647x = setting;
        this.f41648y = table1;
        this.f41649z = table2;
        this.A = table3;
        this.B = textView2;
        this.C = textViewNodata;
        this.D = toolbar;
        this.E = topImag;
    }

    @NonNull
    public static m bind(@NonNull View rootView) {
        int i10 = R.id.activity_classify_game;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.activity_classify_game);
        if (linearLayout != null) {
            i10 = R.id.appbar;
            AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
            if (appBarLayout != null) {
                i10 = R.id.colltoobar;
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(rootView, R.id.colltoobar);
                if (collapsingToolbarLayout != null) {
                    i10 = R.id.failedMessage;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.failedMessage);
                    if (textView != null) {
                        i10 = R.id.line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.loading_none;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loading_none);
                            if (linearLayout2 != null) {
                                i10 = R.id.loading_view;
                                LoadingImageView loadingImageView = (LoadingImageView) ViewBindings.findChildViewById(rootView, R.id.loading_view);
                                if (loadingImageView != null) {
                                    i10 = R.id.lodingBackImage;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
                                    if (imageView != null) {
                                        i10 = R.id.loding_faile;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_faile);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.loding_layout;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_layout);
                                            if (linearLayout4 != null) {
                                                i10 = R.id.mLoadingLayout;
                                                LoadingLayout loadingLayout = (LoadingLayout) ViewBindings.findChildViewById(rootView, R.id.mLoadingLayout);
                                                if (loadingLayout != null) {
                                                    i10 = R.id.mViewpagerV4;
                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.mViewpagerV4);
                                                    if (frameLayout != null) {
                                                        i10 = R.id.main_content;
                                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.main_content);
                                                        if (coordinatorLayout != null) {
                                                            i10 = R.id.nodata_layout;
                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nodata_layout);
                                                            if (linearLayout5 != null) {
                                                                i10 = R.id.noneMessage;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.noneMessage);
                                                                if (textView2 != null) {
                                                                    i10 = R.id.noneReloadImage;
                                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.noneReloadImage);
                                                                    if (imageView2 != null) {
                                                                        i10 = R.id.refreshx;
                                                                        SwipeRefresh swipeRefresh = (SwipeRefresh) ViewBindings.findChildViewById(rootView, R.id.refreshx);
                                                                        if (swipeRefresh != null) {
                                                                            i10 = R.id.relodingimag;
                                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.relodingimag);
                                                                            if (imageView3 != null) {
                                                                                i10 = R.id.selectedType;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.selectedType);
                                                                                if (textView3 != null) {
                                                                                    i10 = R.id.setAll;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setAll);
                                                                                    if (textView4 != null) {
                                                                                        i10 = R.id.setNetwork;
                                                                                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork);
                                                                                        if (button != null) {
                                                                                            i10 = R.id.setting;
                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setting);
                                                                                            if (textView5 != null) {
                                                                                                i10 = R.id.table1;
                                                                                                SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager = (SlidingTabLayoutNoViewPager) ViewBindings.findChildViewById(rootView, R.id.table1);
                                                                                                if (slidingTabLayoutNoViewPager != null) {
                                                                                                    i10 = R.id.table2;
                                                                                                    SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager2 = (SlidingTabLayoutNoViewPager) ViewBindings.findChildViewById(rootView, R.id.table2);
                                                                                                    if (slidingTabLayoutNoViewPager2 != null) {
                                                                                                        i10 = R.id.table3;
                                                                                                        SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager3 = (SlidingTabLayoutNoViewPager) ViewBindings.findChildViewById(rootView, R.id.table3);
                                                                                                        if (slidingTabLayoutNoViewPager3 != null) {
                                                                                                            i10 = R.id.textView2;
                                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                                                                                            if (textView6 != null) {
                                                                                                                i10 = R.id.textView_nodata;
                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView_nodata);
                                                                                                                if (textView7 != null) {
                                                                                                                    i10 = R.id.toolbar;
                                                                                                                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(rootView, R.id.toolbar);
                                                                                                                    if (toolbar != null) {
                                                                                                                        i10 = R.id.topImag;
                                                                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.topImag);
                                                                                                                        if (imageView4 != null) {
                                                                                                                            return new m((RelativeLayout) rootView, linearLayout, appBarLayout, collapsingToolbarLayout, textView, viewFindChildViewById, linearLayout2, loadingImageView, imageView, linearLayout3, linearLayout4, loadingLayout, frameLayout, coordinatorLayout, linearLayout5, textView2, imageView2, swipeRefresh, imageView3, textView3, textView4, button, textView5, slidingTabLayoutNoViewPager, slidingTabLayoutNoViewPager2, slidingTabLayoutNoViewPager3, textView6, textView7, toolbar, imageView4);
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
    public static m inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41625b;
    }

    @NonNull
    public static m inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_classify_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
