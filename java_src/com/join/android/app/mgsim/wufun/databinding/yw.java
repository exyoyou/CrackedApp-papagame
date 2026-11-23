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
import com.join.android.app.mgsim.wufun.R;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;

/* JADX INFO: loaded from: classes4.dex */
public abstract class yw extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f47975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f47976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected MessageCloudGamingPlaytimeResponse.PlaytimeLog f47979f;

    protected yw(Object _bindingComponent, View _root, int _localFieldCount, ImageView iv1, TextView tvText1, TextView tvText2, TextView tvText3) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47975b = iv1;
        this.f47976c = tvText1;
        this.f47977d = tvText2;
        this.f47978e = tvText3;
    }

    @Deprecated
    public static yw b(@NonNull View view, @Nullable Object component) {
        return (yw) ViewDataBinding.bind(component, view, R.layout.item_cloud_asset_time_1);
    }

    public static yw bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static yw f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (yw) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_time_1, root, attachToRoot, component);
    }

    @NonNull
    public static yw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static yw m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (yw) ViewDataBinding.inflateInternal(inflater, R.layout.item_cloud_asset_time_1, null, false, component);
    }

    @Nullable
    public MessageCloudGamingPlaytimeResponse.PlaytimeLog d() {
        return this.f47979f;
    }

    public abstract void n(@Nullable MessageCloudGamingPlaytimeResponse.PlaytimeLog itemData);

    @NonNull
    public static yw inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
