package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.CouponItemBean;
import com.join.kotlin.discount.proxy.CouponListClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class my extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f42075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42080g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42081h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42082i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f42083j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42084k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f42085l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final View f42086m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f42087n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Bindable
    protected CouponItemBean f42088o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Bindable
    protected CouponListClickProxy f42089p;

    protected my(Object _bindingComponent, View _root, int _localFieldCount, TextView tvDesc, TextView tvDetail, TextView tvLabelY, TextView tvLabelYe, TextView tvMj, TextView tvName, TextView tvRange, TextView tvTime, TextView tvY, TextView tvYe, View vLeft, View vLine, View vRight) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f42075b = tvDesc;
        this.f42076c = tvDetail;
        this.f42077d = tvLabelY;
        this.f42078e = tvLabelYe;
        this.f42079f = tvMj;
        this.f42080g = tvName;
        this.f42081h = tvRange;
        this.f42082i = tvTime;
        this.f42083j = tvY;
        this.f42084k = tvYe;
        this.f42085l = vLeft;
        this.f42086m = vLine;
        this.f42087n = vRight;
    }

    @Deprecated
    public static my b(@NonNull View view, @Nullable Object component) {
        return (my) ViewDataBinding.bind(component, view, R.layout.item_coupon_game_detail);
    }

    public static my bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static my inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static my m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (my) ViewDataBinding.inflateInternal(inflater, R.layout.item_coupon_game_detail, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static my n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (my) ViewDataBinding.inflateInternal(inflater, R.layout.item_coupon_game_detail, null, false, component);
    }

    @Nullable
    public CouponListClickProxy d() {
        return this.f42089p;
    }

    @Nullable
    public CouponItemBean f() {
        return this.f42088o;
    }

    public abstract void t(@Nullable CouponListClickProxy click);

    public abstract void u(@Nullable CouponItemBean itemData);

    @NonNull
    public static my inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
