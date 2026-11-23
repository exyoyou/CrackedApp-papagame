package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ge extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f38822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f38824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38826f;

    protected ge(Object _bindingComponent, View _root, int _localFieldCount, ImageView iv1, ImageView ivBtn1, TextView tvBtn1, TextView tvLabel1, TextView tvText1) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38822b = iv1;
        this.f38823c = ivBtn1;
        this.f38824d = tvBtn1;
        this.f38825e = tvLabel1;
        this.f38826f = tvText1;
    }

    @Deprecated
    public static ge b(@NonNull View view, @Nullable Object component) {
        return (ge) ViewDataBinding.bind(component, view, R.layout.dialog_cloud_birthday_setting);
    }

    public static ge bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ge c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ge) ViewDataBinding.inflateInternal(inflater, R.layout.dialog_cloud_birthday_setting, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static ge d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ge) ViewDataBinding.inflateInternal(inflater, R.layout.dialog_cloud_birthday_setting, null, false, component);
    }

    @NonNull
    public static ge inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ge inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
