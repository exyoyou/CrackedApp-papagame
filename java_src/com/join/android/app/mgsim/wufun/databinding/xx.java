package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class xx extends ViewDataBinding {
    protected xx(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static xx b(@NonNull View view, @Nullable Object component) {
        return (xx) ViewDataBinding.bind(component, view, R.layout.item_common_zone_default);
    }

    public static xx bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static xx c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (xx) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_default, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static xx d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (xx) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_default, null, false, component);
    }

    @NonNull
    public static xx inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static xx inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
