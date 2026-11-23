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

/* JADX INFO: loaded from: classes4.dex */
public abstract class i50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f39684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected String f39685c;

    protected i50(Object _bindingComponent, View _root, int _localFieldCount, TextView tvText1) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f39684b = tvText1;
    }

    @Deprecated
    public static i50 b(@NonNull View view, @Nullable Object component) {
        return (i50) ViewDataBinding.bind(component, view, R.layout.item_recommend_title);
    }

    public static i50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static i50 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (i50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_title, root, attachToRoot, component);
    }

    @NonNull
    public static i50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static i50 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (i50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_title, null, false, component);
    }

    @Nullable
    public String d() {
        return this.f39685c;
    }

    public abstract void n(@Nullable String itemData);

    @NonNull
    public static i50 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
