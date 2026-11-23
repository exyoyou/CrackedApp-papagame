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
public abstract class ue extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f45664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f45665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45668f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Bindable
    protected MessageCloudGamingPlaytimeResponse.PlaytimeVipDaysInfo f45669g;

    protected ue(Object _bindingComponent, View _root, int _localFieldCount, ImageView iv1, ImageView ivBtn1, TextView tvBtn1, TextView tvLabel1, TextView tvText3) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45664b = iv1;
        this.f45665c = ivBtn1;
        this.f45666d = tvBtn1;
        this.f45667e = tvLabel1;
        this.f45668f = tvText3;
    }

    @Deprecated
    public static ue b(@NonNull View view, @Nullable Object component) {
        return (ue) ViewDataBinding.bind(component, view, R.layout.dialog_cloud_time_reward_success);
    }

    public static ue bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ue f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ue) ViewDataBinding.inflateInternal(inflater, R.layout.dialog_cloud_time_reward_success, root, attachToRoot, component);
    }

    @NonNull
    public static ue inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ue m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ue) ViewDataBinding.inflateInternal(inflater, R.layout.dialog_cloud_time_reward_success, null, false, component);
    }

    @Nullable
    public MessageCloudGamingPlaytimeResponse.PlaytimeVipDaysInfo d() {
        return this.f45669g;
    }

    public abstract void n(@Nullable MessageCloudGamingPlaytimeResponse.PlaytimeVipDaysInfo itemData);

    @NonNull
    public static ue inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
