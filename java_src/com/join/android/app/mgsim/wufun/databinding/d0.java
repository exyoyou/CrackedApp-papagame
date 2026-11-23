package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.coupon.ClickProxy;
import com.join.kotlin.ui.coupon.CouponViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d0 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f37176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RecyclerView f37177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected CouponViewModle f37179e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected BaseDataBindingAdapter f37180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected ClickProxy f37181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Bindable
    protected LoadBindClickProxy f37182h;

    protected d0(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, RecyclerView recycleView, TextView titleTextview) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37176b = backImage;
        this.f37177c = recycleView;
        this.f37178d = titleTextview;
    }

    @NonNull
    @Deprecated
    public static d0 A(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (d0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_couponlist_activity, null, false, component);
    }

    @Deprecated
    public static d0 b(@NonNull View view, @Nullable Object component) {
        return (d0) ViewDataBinding.bind(component, view, R.layout.activity_couponlist_activity);
    }

    public static d0 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static d0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return z(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static d0 z(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (d0) ViewDataBinding.inflateInternal(inflater, R.layout.activity_couponlist_activity, root, attachToRoot, component);
    }

    public abstract void B(@Nullable BaseDataBindingAdapter adapter);

    public abstract void C(@Nullable ClickProxy click);

    public abstract void D(@Nullable LoadBindClickProxy loadBindProxy);

    public abstract void E(@Nullable CouponViewModle vm);

    @Nullable
    public BaseDataBindingAdapter d() {
        return this.f37180f;
    }

    @Nullable
    public ClickProxy f() {
        return this.f37181g;
    }

    @Nullable
    public LoadBindClickProxy w() {
        return this.f37182h;
    }

    @Nullable
    public CouponViewModle y() {
        return this.f37179e;
    }

    @NonNull
    public static d0 inflate(@NonNull LayoutInflater inflater) {
        return A(inflater, DataBindingUtil.getDefaultComponent());
    }
}
