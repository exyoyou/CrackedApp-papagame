package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class b1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f36136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f36137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36138d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36139e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36140f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36141g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f36142h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f36143i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36144j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f36145k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36146l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36147m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f36148n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36149o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36150p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout f36151q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f36152r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f36153s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f36154t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f36155u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f36156v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f36157w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f36158x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final ViewPager f36159y;

    private b1(@NonNull FrameLayout rootView, @NonNull AppBarLayout appbar, @NonNull TextView btnStart, @NonNull ConstraintLayout clAuthor, @NonNull ConstraintLayout clBottom, @NonNull ConstraintLayout clShare, @NonNull CollapsingToolbarLayout collapsingToolbarLayout, @NonNull CoordinatorLayout coordinatorLayout, @NonNull SimpleDraweeView ivAuthorAvatar, @NonNull ImageView ivBack, @NonNull SimpleDraweeView ivGameIcon, @NonNull ImageView ivMenu, @NonNull ImageView ivShare, @NonNull LinearLayout llShare, @NonNull LinearLayout llTop, @NonNull SlidingTabLayout tablayout, @NonNull ImageView tagPass, @NonNull TextView tvAuthorName, @NonNull TextView tvBestScore, @NonNull TextView tvIntro, @NonNull TextView tvPassRate, @NonNull TextView tvTitle, @NonNull TextView tvTopTitle, @NonNull ViewPager viewpager) {
        this.f36136b = rootView;
        this.f36137c = appbar;
        this.f36138d = btnStart;
        this.f36139e = clAuthor;
        this.f36140f = clBottom;
        this.f36141g = clShare;
        this.f36142h = collapsingToolbarLayout;
        this.f36143i = coordinatorLayout;
        this.f36144j = ivAuthorAvatar;
        this.f36145k = ivBack;
        this.f36146l = ivGameIcon;
        this.f36147m = ivMenu;
        this.f36148n = ivShare;
        this.f36149o = llShare;
        this.f36150p = llTop;
        this.f36151q = tablayout;
        this.f36152r = tagPass;
        this.f36153s = tvAuthorName;
        this.f36154t = tvBestScore;
        this.f36155u = tvIntro;
        this.f36156v = tvPassRate;
        this.f36157w = tvTitle;
        this.f36158x = tvTopTitle;
        this.f36159y = viewpager;
    }

    @NonNull
    public static b1 bind(@NonNull View rootView) {
        int i10 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
        if (appBarLayout != null) {
            i10 = R.id.btnStart;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnStart);
            if (textView != null) {
                i10 = R.id.clAuthor;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.clAuthor);
                if (constraintLayout != null) {
                    i10 = R.id.clBottom;
                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.clBottom);
                    if (constraintLayout2 != null) {
                        i10 = R.id.clShare;
                        ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.clShare);
                        if (constraintLayout3 != null) {
                            i10 = R.id.collapsingToolbarLayout;
                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(rootView, R.id.collapsingToolbarLayout);
                            if (collapsingToolbarLayout != null) {
                                i10 = R.id.coordinatorLayout;
                                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.coordinatorLayout);
                                if (coordinatorLayout != null) {
                                    i10 = R.id.ivAuthorAvatar;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivAuthorAvatar);
                                    if (simpleDraweeView != null) {
                                        i10 = R.id.ivBack;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivBack);
                                        if (imageView != null) {
                                            i10 = R.id.ivGameIcon;
                                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGameIcon);
                                            if (simpleDraweeView2 != null) {
                                                i10 = R.id.ivMenu;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivMenu);
                                                if (imageView2 != null) {
                                                    i10 = R.id.ivShare;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivShare);
                                                    if (imageView3 != null) {
                                                        i10 = R.id.llShare;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llShare);
                                                        if (linearLayout != null) {
                                                            i10 = R.id.llTop;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llTop);
                                                            if (linearLayout2 != null) {
                                                                i10 = R.id.tablayout;
                                                                SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
                                                                if (slidingTabLayout != null) {
                                                                    i10 = R.id.tagPass;
                                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.tagPass);
                                                                    if (imageView4 != null) {
                                                                        i10 = R.id.tvAuthorName;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvAuthorName);
                                                                        if (textView2 != null) {
                                                                            i10 = R.id.tvBestScore;
                                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBestScore);
                                                                            if (textView3 != null) {
                                                                                i10 = R.id.tvIntro;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvIntro);
                                                                                if (textView4 != null) {
                                                                                    i10 = R.id.tvPassRate;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPassRate);
                                                                                    if (textView5 != null) {
                                                                                        i10 = R.id.tvTitle;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                                                                                        if (textView6 != null) {
                                                                                            i10 = R.id.tvTopTitle;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTopTitle);
                                                                                            if (textView7 != null) {
                                                                                                i10 = R.id.viewpager;
                                                                                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                                                                                                if (viewPager != null) {
                                                                                                    return new b1((FrameLayout) rootView, appBarLayout, textView, constraintLayout, constraintLayout2, constraintLayout3, collapsingToolbarLayout, coordinatorLayout, simpleDraweeView, imageView, simpleDraweeView2, imageView2, imageView3, linearLayout, linearLayout2, slidingTabLayout, imageView4, textView2, textView3, textView4, textView5, textView6, textView7, viewPager);
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
    public static b1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f36136b;
    }

    @NonNull
    public static b1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_end_game_detail, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
