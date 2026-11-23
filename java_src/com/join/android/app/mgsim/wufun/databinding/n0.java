package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.proxy.GameDetailClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class n0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f42120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f42121c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TabLayout f42122d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f42123e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected GameDetailViewModel f42124f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailClickProxy f42125g;

    protected n0(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImg, ConstraintLayout clContainer, TabLayout tablayout, ViewPager2 viewpager) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42120b = backImg;
        this.f42121c = clContainer;
        this.f42122d = tablayout;
        this.f42123e = viewpager;
    }

    @Deprecated
    public static n0 b(@NonNull View view, @Nullable Object component) {
        return (n0) ViewDataBinding.bind(component, view, R.layout.activity_discount_game_detail);
    }

    public static n0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static n0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static n0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (n0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static n0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (n0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail, null, false, component);
    }

    @Nullable
    public GameDetailClickProxy d() {
        return this.f42125g;
    }

    @Nullable
    public GameDetailViewModel f() {
        return this.f42124f;
    }

    public abstract void t(@Nullable GameDetailClickProxy click);

    public abstract void u(@Nullable GameDetailViewModel vm);

    @NonNull
    public static n0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
