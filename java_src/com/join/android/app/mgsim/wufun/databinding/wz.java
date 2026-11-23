package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.GameServerInfoBean;
import com.join.kotlin.discount.proxy.GameDetailServerBookDialogClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public abstract class wz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final View f47017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected GameServerInfoBean f47018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected GameDetailServerBookDialogClickProxy f47019d;

    protected wz(Object _bindingComponent, View _root, int _localFieldCount, View redPoint) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47017b = redPoint;
    }

    @Deprecated
    public static wz b(@NonNull View view, @Nullable Object component) {
        return (wz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_server_list);
    }

    public static wz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static wz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static wz m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (wz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_server_list, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static wz n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (wz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_server_list, null, false, component);
    }

    @Nullable
    public GameDetailServerBookDialogClickProxy d() {
        return this.f47019d;
    }

    @Nullable
    public GameServerInfoBean f() {
        return this.f47018c;
    }

    public abstract void t(@Nullable GameDetailServerBookDialogClickProxy click);

    public abstract void u(@Nullable GameServerInfoBean itemData);

    @NonNull
    public static wz inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
