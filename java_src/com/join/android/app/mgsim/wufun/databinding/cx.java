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
import com.wufan.user.service.protobuf.MessageCloudGamingCoinResponse;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cx extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f37137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37139d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected MessageCloudGamingCoinResponse.CoinLog f37140e;

    protected cx(Object _bindingComponent, View _root, int _localFieldCount, TextView tvText1, TextView tvText2, TextView tvText3) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f37137b = tvText1;
        this.f37138c = tvText2;
        this.f37139d = tvText3;
    }

    @Deprecated
    public static cx b(@NonNull View view, @Nullable Object component) {
        return (cx) ViewDataBinding.bind(component, view, R.layout.item_cloud_asset_yunb);
    }

    public static cx bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static cx f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (cx) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_yunb, root, attachToRoot, component);
    }

    @NonNull
    public static cx inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static cx m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (cx) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_yunb, null, false, component);
    }

    @Nullable
    public MessageCloudGamingCoinResponse.CoinLog d() {
        return this.f37140e;
    }

    public abstract void n(@Nullable MessageCloudGamingCoinResponse.CoinLog itemData);

    @NonNull
    public static cx inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
