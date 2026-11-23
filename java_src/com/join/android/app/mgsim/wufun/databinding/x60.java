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
import com.join.kotlin.quark.model.bean.SourceTabItemBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x60 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f47117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected SourceTabItemBean f47118c;

    protected x60(Object _bindingComponent, View _root, int _localFieldCount, TextView tvText) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47117b = tvText;
    }

    @Deprecated
    public static x60 b(@NonNull View view, @Nullable Object component) {
        return (x60) ViewDataBinding.bind(component, view, R.layout.item_source_hope_tag);
    }

    public static x60 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x60 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (x60) ViewDataBinding.inflateInternal(inflater, R.layout.item_source_hope_tag, root, attachToRoot, component);
    }

    @NonNull
    public static x60 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x60 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (x60) ViewDataBinding.inflateInternal(inflater, R.layout.item_source_hope_tag, null, false, component);
    }

    @Nullable
    public SourceTabItemBean d() {
        return this.f47118c;
    }

    public abstract void n(@Nullable SourceTabItemBean itemData);

    @NonNull
    public static x60 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
