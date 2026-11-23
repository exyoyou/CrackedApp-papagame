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
import androidx.core.widget.NestedScrollView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel;
import com.join.mgps.customview.MarqueeTextView;
import com.join.mgps.customview.NestedScrollableHost;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ll extends ViewDataBinding {

    @NonNull
    public final RecyclerView A;

    @NonNull
    public final RecyclerView B;

    @NonNull
    public final RecyclerView C;

    @NonNull
    public final XQuickRecyclerView D;

    @NonNull
    public final TextView E;

    @NonNull
    public final ImageView F;

    @NonNull
    public final TextView G;

    @NonNull
    public final SimpleDraweeView H;

    @NonNull
    public final TextView I;

    @NonNull
    public final TextView J;

    @NonNull
    public final TextView K;

    @NonNull
    public final View L;

    @Bindable
    protected GameDetailFragmentViewModel M;

    @Bindable
    protected GameDetailFragmentClickProxy N;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final RecyclerView f41363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final NestedScrollableHost f41364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f41366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41368g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41369h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41370i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41371j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f41372k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41373l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f41374m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41375n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41376o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f41377p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41378q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f41379r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final MarqueeTextView f41380s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f41381t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final View f41382u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final View f41383v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41384w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41385x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f41386y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f41387z;

    protected ll(Object _bindingComponent, View _root, int _localFieldCount, RecyclerView banner, NestedScrollableHost bannerView, ImageView bgGamePoint, View bottomMask, FrameLayout cardComment, FrameLayout cardRelease, ConstraintLayout clContainer, ConstraintLayout clCoupon, ConstraintLayout clGift, ConstraintLayout clNotice, TextView commentTitle, View dividerLine, LinearLayout flBtn, FrameLayout flWelfare, TextView gameDesc, SimpleDraweeView gameIcon, TextView gameInfoTitle, MarqueeTextView gameName, TextView gameTags, View gradientBottom, View gradientTop, LinearLayout llExpand, LinearLayout llIndicator, NestedScrollView nes, TextView releaseTitle, RecyclerView rvComment, RecyclerView rvGameInfo, RecyclerView rvReleaseWelfare, XQuickRecyclerView rvSimilarGame, TextView similarGameTitle, ImageView subAccountArrow, TextView tagCoupon, SimpleDraweeView tagPic, TextView titleCoupon, TextView titleGift, TextView titleNotice, View topMask) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41363b = banner;
        this.f41364c = bannerView;
        this.f41365d = bgGamePoint;
        this.f41366e = bottomMask;
        this.f41367f = cardComment;
        this.f41368g = cardRelease;
        this.f41369h = clContainer;
        this.f41370i = clCoupon;
        this.f41371j = clGift;
        this.f41372k = clNotice;
        this.f41373l = commentTitle;
        this.f41374m = dividerLine;
        this.f41375n = flBtn;
        this.f41376o = flWelfare;
        this.f41377p = gameDesc;
        this.f41378q = gameIcon;
        this.f41379r = gameInfoTitle;
        this.f41380s = gameName;
        this.f41381t = gameTags;
        this.f41382u = gradientBottom;
        this.f41383v = gradientTop;
        this.f41384w = llExpand;
        this.f41385x = llIndicator;
        this.f41386y = nes;
        this.f41387z = releaseTitle;
        this.A = rvComment;
        this.B = rvGameInfo;
        this.C = rvReleaseWelfare;
        this.D = rvSimilarGame;
        this.E = similarGameTitle;
        this.F = subAccountArrow;
        this.G = tagCoupon;
        this.H = tagPic;
        this.I = titleCoupon;
        this.J = titleGift;
        this.K = titleNotice;
        this.L = topMask;
    }

    @Deprecated
    public static ll b(@NonNull View view, @Nullable Object component) {
        return (ll) ViewDataBinding.bind(component, view, R.layout.fragment_discount_game_detail_v2);
    }

    public static ll bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ll inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ll m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ll) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_discount_game_detail_v2, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static ll n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ll) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_discount_game_detail_v2, null, false, component);
    }

    @Nullable
    public GameDetailFragmentClickProxy d() {
        return this.N;
    }

    @Nullable
    public GameDetailFragmentViewModel f() {
        return this.M;
    }

    public abstract void t(@Nullable GameDetailFragmentClickProxy click);

    public abstract void u(@Nullable GameDetailFragmentViewModel vm);

    @NonNull
    public static ll inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
