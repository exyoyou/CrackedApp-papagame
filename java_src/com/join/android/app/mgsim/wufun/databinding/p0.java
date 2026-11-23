package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.discount.proxy.GameDetailCouponClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCouponViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f43145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f43147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f43149f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailCouponViewModel f43150g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected GameDetailCouponClickProxy f43151h;

    protected p0(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImg, ConstraintLayout clContainer, XQuickRecyclerView rvCoupon, TextView title, TextView titleDivider) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f43145b = backImg;
        this.f43146c = clContainer;
        this.f43147d = rvCoupon;
        this.f43148e = title;
        this.f43149f = titleDivider;
    }

    @Deprecated
    public static p0 b(@NonNull View view, @Nullable Object component) {
        return (p0) ViewDataBinding.bind(component, view, R.layout.activity_discount_game_detail_coupon);
    }

    public static p0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static p0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static p0 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (p0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail_coupon, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static p0 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (p0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_discount_game_detail_coupon, null, false, component);
    }

    @Nullable
    public GameDetailCouponClickProxy d() {
        return this.f43151h;
    }

    @Nullable
    public GameDetailCouponViewModel f() {
        return this.f43150g;
    }

    public abstract void t(@Nullable GameDetailCouponClickProxy click);

    public abstract void u(@Nullable GameDetailCouponViewModel vm);

    @NonNull
    public static p0 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
