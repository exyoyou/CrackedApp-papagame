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
public abstract class ex extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f38140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38141c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected MessageCloudGamingCoinResponse.CoinLog f38143e;

    protected ex(Object _bindingComponent, View _root, int _localFieldCount, TextView tvText1, TextView tvText2, TextView tvText3) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38140b = tvText1;
        this.f38141c = tvText2;
        this.f38142d = tvText3;
    }

    @Deprecated
    public static ex b(@NonNull View view, @Nullable Object component) {
        return (ex) ViewDataBinding.bind(component, view, R.layout.item_cloud_asset_yunz);
    }

    public static ex bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ex f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ex) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_yunz, root, attachToRoot, component);
    }

    @NonNull
    public static ex inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ex m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ex) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_yunz, null, false, component);
    }

    @Nullable
    public MessageCloudGamingCoinResponse.CoinLog d() {
        return this.f38143e;
    }

    public abstract void n(@Nullable MessageCloudGamingCoinResponse.CoinLog itemData);

    @NonNull
    public static ex inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
