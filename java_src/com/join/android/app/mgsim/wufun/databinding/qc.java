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
public abstract class qc extends ViewDataBinding {
    protected qc(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static qc b(@NonNull View view, @Nullable Object component) {
        return (qc) ViewDataBinding.bind(component, view, R.layout.databinding_line_layout);
    }

    public static qc bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static qc c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (qc) ViewDataBinding.inflateInternal(inflater, R.layout.databinding_line_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static qc d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (qc) ViewDataBinding.inflateInternal(inflater, R.layout.databinding_line_layout, null, false, component);
    }

    @NonNull
    public static qc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static qc inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
