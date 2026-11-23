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
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class q7 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected BtTagSelecterBean f43717b;

    protected q7(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static q7 b(@NonNull View view, @Nullable Object component) {
        return (q7) ViewDataBinding.bind(component, view, R.layout.bt_select_item);
    }

    public static q7 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static q7 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (q7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_select_item, root, attachToRoot, component);
    }

    @NonNull
    public static q7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static q7 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (q7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_select_item, null, false, component);
    }

    @Nullable
    public BtTagSelecterBean d() {
        return this.f43717b;
    }

    public abstract void n(@Nullable BtTagSelecterBean message);

    @NonNull
    public static q7 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
