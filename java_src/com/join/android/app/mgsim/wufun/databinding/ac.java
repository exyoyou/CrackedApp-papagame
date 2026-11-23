package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.coupon.ClickProxy;
import com.join.mgps.dto.BTGameCouponBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ac extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f35755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f35757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f35758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35759f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35760g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35761h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f35762i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Bindable
    protected BTGameCouponBean f35763j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Bindable
    protected Boolean f35764k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bindable
    protected ClickProxy f35765l;

    protected ac(Object _bindingComponent, View _root, int _localFieldCount, TextView couponName, TextView game, View line, ConstraintLayout money, TextView moneyMessage, TextView moneyNumber, TextView more, TextView time) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f35755b = couponName;
        this.f35756c = game;
        this.f35757d = line;
        this.f35758e = money;
        this.f35759f = moneyMessage;
        this.f35760g = moneyNumber;
        this.f35761h = more;
        this.f35762i = time;
    }

    @Deprecated
    public static ac b(@NonNull View view, @Nullable Object component) {
        return (ac) ViewDataBinding.bind(component, view, R.layout.coupon_list_item_layout);
    }

    public static ac bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ac inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ac x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ac) ViewDataBinding.inflateInternal(inflater, R.layout.coupon_list_item_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static ac y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ac) ViewDataBinding.inflateInternal(inflater, R.layout.coupon_list_item_layout, null, false, component);
    }

    public abstract void A(@Nullable ClickProxy click);

    public abstract void B(@Nullable Boolean isdiscount);

    @Nullable
    public BTGameCouponBean d() {
        return this.f35763j;
    }

    @Nullable
    public ClickProxy f() {
        return this.f35765l;
    }

    @Nullable
    public Boolean w() {
        return this.f35764k;
    }

    public abstract void z(@Nullable BTGameCouponBean album);

    @NonNull
    public static ac inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
