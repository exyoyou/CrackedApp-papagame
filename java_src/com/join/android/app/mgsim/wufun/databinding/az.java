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

/* JADX INFO: loaded from: classes4.dex */
public abstract class az extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected Boolean f36116b;

    protected az(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static az b(@NonNull View view, @Nullable Object component) {
        return (az) ViewDataBinding.bind(component, view, R.layout.item_detail_banner_indicator);
    }

    public static az bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static az f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (az) ViewDataBinding.inflateInternal(inflater, R.layout.item_detail_banner_indicator, root, attachToRoot, component);
    }

    @NonNull
    public static az inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static az m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (az) ViewDataBinding.inflateInternal(inflater, R.layout.item_detail_banner_indicator, null, false, component);
    }

    @Nullable
    public Boolean d() {
        return this.f36116b;
    }

    public abstract void n(@Nullable Boolean isSelected);

    @NonNull
    public static az inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
