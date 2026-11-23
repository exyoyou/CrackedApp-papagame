package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class z1 implements ViewBinding {

    @NonNull
    public final ViewPager A;

    @NonNull
    public final WrapContentGridView B;

    @NonNull
    public final TextView C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f48025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f48027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48028f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f48029g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f48030h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final FrameLayout f48031i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final FrameLayout f48032j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final FrameLayout f48033k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48034l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final GridView f48035m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RecyclerView f48036n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f48037o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f48038p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ImageView f48039q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ImageView f48040r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48041s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48042t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final View f48043u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final FrameLayout f48044v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f48045w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final ImageView f48046x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TabLayout f48047y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f48048z;

    private z1(@NonNull ConstraintLayout rootView, @NonNull View back, @NonNull ImageView battleHall, @NonNull TextView buyVip, @NonNull ConstraintLayout constraintLayout9, @NonNull CoordinatorLayout coordinatorLayout, @NonNull FrameLayout endGameEntrance, @NonNull FrameLayout expandContainer, @NonNull FrameLayout frameLayout, @NonNull FrameLayout friendContainer, @NonNull SimpleDraweeView gameImg, @NonNull GridView gameMainNewLeftGv, @NonNull RecyclerView gameMainNewRv, @NonNull TextView gameName, @NonNull ImageView imageView80, @NonNull ImageView ivChoose, @NonNull ImageView ivTips, @NonNull ConstraintLayout leftContainer, @NonNull LinearLayout llLoading, @NonNull View mask, @NonNull FrameLayout rightContainer, @NonNull TextView roomCount, @NonNull ImageView startGame, @NonNull TabLayout tabLayout, @NonNull TextView tvLoadingInfo, @NonNull ViewPager viewPager, @NonNull WrapContentGridView vipFunc, @NonNull TextView vipTitle) {
        this.f48024b = rootView;
        this.f48025c = back;
        this.f48026d = battleHall;
        this.f48027e = buyVip;
        this.f48028f = constraintLayout9;
        this.f48029g = coordinatorLayout;
        this.f48030h = endGameEntrance;
        this.f48031i = expandContainer;
        this.f48032j = frameLayout;
        this.f48033k = friendContainer;
        this.f48034l = gameImg;
        this.f48035m = gameMainNewLeftGv;
        this.f48036n = gameMainNewRv;
        this.f48037o = gameName;
        this.f48038p = imageView80;
        this.f48039q = ivChoose;
        this.f48040r = ivTips;
        this.f48041s = leftContainer;
        this.f48042t = llLoading;
        this.f48043u = mask;
        this.f48044v = rightContainer;
        this.f48045w = roomCount;
        this.f48046x = startGame;
        this.f48047y = tabLayout;
        this.f48048z = tvLoadingInfo;
        this.A = viewPager;
        this.B = vipFunc;
        this.C = vipTitle;
    }

    @NonNull
    public static z1 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.back);
        if (viewFindChildViewById != null) {
            i10 = R.id.battleHall;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.battleHall);
            if (imageView != null) {
                i10 = R.id.buyVip;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.buyVip);
                if (textView != null) {
                    i10 = R.id.constraintLayout9;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout9);
                    if (constraintLayout != null) {
                        i10 = R.id.coordinatorLayout;
                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(rootView, R.id.coordinatorLayout);
                        if (coordinatorLayout != null) {
                            i10 = R.id.endGameEntrance;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.endGameEntrance);
                            if (frameLayout != null) {
                                i10 = R.id.expandContainer;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.expandContainer);
                                if (frameLayout2 != null) {
                                    i10 = R.id.frameLayout;
                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.frameLayout);
                                    if (frameLayout3 != null) {
                                        i10 = R.id.friendContainer;
                                        FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.friendContainer);
                                        if (frameLayout4 != null) {
                                            i10 = R.id.gameImg;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameImg);
                                            if (simpleDraweeView != null) {
                                                i10 = R.id.gameMainNewLeftGv;
                                                GridView gridView = (GridView) ViewBindings.findChildViewById(rootView, R.id.gameMainNewLeftGv);
                                                if (gridView != null) {
                                                    i10 = R.id.gameMainNewRv;
                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.gameMainNewRv);
                                                    if (recyclerView != null) {
                                                        i10 = R.id.gameName;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                                                        if (textView2 != null) {
                                                            i10 = R.id.imageView80;
                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView80);
                                                            if (imageView2 != null) {
                                                                i10 = R.id.ivChoose;
                                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivChoose);
                                                                if (imageView3 != null) {
                                                                    i10 = R.id.ivTips;
                                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivTips);
                                                                    if (imageView4 != null) {
                                                                        i10 = R.id.leftContainer;
                                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.leftContainer);
                                                                        if (constraintLayout2 != null) {
                                                                            i10 = R.id.ll_loading;
                                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_loading);
                                                                            if (linearLayout != null) {
                                                                                i10 = R.id.mask;
                                                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.mask);
                                                                                if (viewFindChildViewById2 != null) {
                                                                                    i10 = R.id.rightContainer;
                                                                                    FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.rightContainer);
                                                                                    if (frameLayout5 != null) {
                                                                                        i10 = R.id.roomCount;
                                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.roomCount);
                                                                                        if (textView3 != null) {
                                                                                            i10 = R.id.startGame;
                                                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.startGame);
                                                                                            if (imageView5 != null) {
                                                                                                i10 = R.id.tabLayout;
                                                                                                TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tabLayout);
                                                                                                if (tabLayout != null) {
                                                                                                    i10 = R.id.tv_loading_info;
                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_loading_info);
                                                                                                    if (textView4 != null) {
                                                                                                        i10 = R.id.viewPager;
                                                                                                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                                                                        if (viewPager != null) {
                                                                                                            i10 = R.id.vipFunc;
                                                                                                            WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(rootView, R.id.vipFunc);
                                                                                                            if (wrapContentGridView != null) {
                                                                                                                i10 = R.id.vipTitle;
                                                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.vipTitle);
                                                                                                                if (textView5 != null) {
                                                                                                                    return new z1((ConstraintLayout) rootView, viewFindChildViewById, imageView, textView, constraintLayout, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, frameLayout4, simpleDraweeView, gridView, recyclerView, textView2, imageView2, imageView3, imageView4, constraintLayout2, linearLayout, viewFindChildViewById2, frameLayout5, textView3, imageView5, tabLayout, textView4, viewPager, wrapContentGridView, textView5);
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
    public static z1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48024b;
    }

    @NonNull
    public static z1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_main4, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
