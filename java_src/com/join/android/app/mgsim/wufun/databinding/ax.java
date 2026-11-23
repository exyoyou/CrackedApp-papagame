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
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ax extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f36103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected MessageCloudGamingPlaytimeResponse.PlaytimeSummary f36104c;

    protected ax(Object _bindingComponent, View _root, int _localFieldCount, TextView tvText1) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36103b = tvText1;
    }

    @Deprecated
    public static ax b(@NonNull View view, @Nullable Object component) {
        return (ax) ViewDataBinding.bind(component, view, R.layout.item_cloud_asset_time);
    }

    public static ax bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ax f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ax) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_time, root, attachToRoot, component);
    }

    @NonNull
    public static ax inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ax m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ax) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_time, null, false, component);
    }

    @Nullable
    public MessageCloudGamingPlaytimeResponse.PlaytimeSummary d() {
        return this.f36104c;
    }

    public abstract void n(@Nullable MessageCloudGamingPlaytimeResponse.PlaytimeSummary itemData);

    @NonNull
    public static ax inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
