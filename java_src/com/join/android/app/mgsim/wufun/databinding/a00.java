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
import com.join.kotlin.discount.model.bean.GiftItemBean;
import com.join.kotlin.discount.proxy.GameDetailGiftClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a00 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f35554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f35555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35556d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected GiftItemBean f35558f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected GameDetailGiftClickProxy f35559g;

    protected a00(Object _bindingComponent, View _root, int _localFieldCount, TextView giftContent, TextView giftName, TextView giftNum, TextView tvBtn) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f35554b = giftContent;
        this.f35555c = giftName;
        this.f35556d = giftNum;
        this.f35557e = tvBtn;
    }

    @Deprecated
    public static a00 b(@NonNull View view, @Nullable Object component) {
        return (a00) ViewDataBinding.bind(component, view, R.layout.item_discount_gift_content);
    }

    public static a00 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static a00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static a00 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (a00) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_gift_content, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static a00 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (a00) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_gift_content, null, false, component);
    }

    @Nullable
    public GameDetailGiftClickProxy d() {
        return this.f35559g;
    }

    @Nullable
    public GiftItemBean f() {
        return this.f35558f;
    }

    public abstract void t(@Nullable GameDetailGiftClickProxy click);

    public abstract void u(@Nullable GiftItemBean itemData);

    @NonNull
    public static a00 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
