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
public abstract class oz extends ViewDataBinding {
    protected oz(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static oz b(@NonNull View view, @Nullable Object component) {
        return (oz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_banner_placeholder);
    }

    public static oz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static oz c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (oz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_placeholder, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static oz d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (oz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_banner_placeholder, null, false, component);
    }

    @NonNull
    public static oz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static oz inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
