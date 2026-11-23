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
public abstract class ky extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f41055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41058e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41059f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41060g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41061h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f41062i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41063j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f41064k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41065l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41066m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f41067n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final View f41068o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final View f41069p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final View f41070q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Bindable
    protected CouponItemBean f41071r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Bindable
    protected CouponListClickProxy f41072s;

    protected ky(Object _bindingComponent, View _root, int _localFieldCount, TextView tvDesc, TextView tvDetail, TextView tvDiscount, TextView tvDiscountMj, TextView tvLabelDiscount, TextView tvLabelY, TextView tvLabelYe, TextView tvMj, TextView tvName, TextView tvRange, TextView tvTime, TextView tvY, TextView tvYe, View vLeft, View vLineH, View vRight) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f41055b = tvDesc;
        this.f41056c = tvDetail;
        this.f41057d = tvDiscount;
        this.f41058e = tvDiscountMj;
        this.f41059f = tvLabelDiscount;
        this.f41060g = tvLabelY;
        this.f41061h = tvLabelYe;
        this.f41062i = tvMj;
        this.f41063j = tvName;
        this.f41064k = tvRange;
        this.f41065l = tvTime;
        this.f41066m = tvY;
        this.f41067n = tvYe;
        this.f41068o = vLeft;
        this.f41069p = vLineH;
        this.f41070q = vRight;
    }

    @Deprecated
    public static ky b(@NonNull View view, @Nullable Object component) {
        return (ky) ViewDataBinding.bind(component, view, R.layout.item_coupon);
    }

    public static ky bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ky inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ky m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ky) ViewDataBinding.inflateInternal(inflater, R.layout.item_coupon, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static ky n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ky) ViewDataBinding.inflateInternal(inflater, R.layout.item_coupon, null, false, component);
    }

    @Nullable
    public CouponListClickProxy d() {
        return this.f41072s;
    }

    @Nullable
    public CouponItemBean f() {
        return this.f41071r;
    }

    public abstract void t(@Nullable CouponListClickProxy click);

    public abstract void u(@Nullable CouponItemBean itemData);

    @NonNull
    public static ky inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
