package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.SourceShareClickProxy;
import com.join.kotlin.quark.viewmodel.SourceShareViewModel;
import com.youth.banner.Banner;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v4 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final AppBarLayout f46030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Banner f46032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final CollapsingToolbarLayout f46033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f46034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f46036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46037i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final CoordinatorLayout f46038j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f46039k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final EditText f46040l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TabLayout f46041m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f46042n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f46043o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ViewPager f46044p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Bindable
    protected SourceShareViewModel f46045q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Bindable
    protected SourceShareClickProxy f46046r;

    protected v4(Object _bindingComponent, View _root, int _localFieldCount, AppBarLayout appBarLayout, ImageView backImage, Banner bannerView, CollapsingToolbarLayout collapsingToolbarLayout, View divider, ImageView ivSearch, ImageView ivShare, RelativeLayout lLayoutSearch, CoordinatorLayout mainContent, ImageView searchClear, EditText searchEditText, TabLayout tabLayout, TextView titleTextview, TextView tvSearch, ViewPager viewPager) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f46030b = appBarLayout;
        this.f46031c = backImage;
        this.f46032d = bannerView;
        this.f46033e = collapsingToolbarLayout;
        this.f46034f = divider;
        this.f46035g = ivSearch;
        this.f46036h = ivShare;
        this.f46037i = lLayoutSearch;
        this.f46038j = mainContent;
        this.f46039k = searchClear;
        this.f46040l = searchEditText;
        this.f46041m = tabLayout;
        this.f46042n = titleTextview;
        this.f46043o = tvSearch;
        this.f46044p = viewPager;
    }

    @Deprecated
    public static v4 b(@NonNull View view, @Nullable Object component) {
        return (v4) ViewDataBinding.bind(component, view, R.layout.activity_source_share);
    }

    public static v4 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static v4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static v4 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (v4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_source_share, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static v4 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (v4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_source_share, null, false, component);
    }

    @Nullable
    public SourceShareClickProxy d() {
        return this.f46046r;
    }

    @Nullable
    public SourceShareViewModel f() {
        return this.f46045q;
    }

    public abstract void t(@Nullable SourceShareClickProxy click);

    public abstract void u(@Nullable SourceShareViewModel vm);

    @NonNull
    public static v4 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
