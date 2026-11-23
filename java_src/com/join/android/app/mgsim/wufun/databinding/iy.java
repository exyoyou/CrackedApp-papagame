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
public abstract class iy extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f39984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected String f39985c;

    protected iy(Object _bindingComponent, View _root, int _localFieldCount, TextView tvTitle) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f39984b = tvTitle;
    }

    @Deprecated
    public static iy b(@NonNull View view, @Nullable Object component) {
        return (iy) ViewDataBinding.bind(component, view, R.layout.item_common_zone_title);
    }

    public static iy bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static iy f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (iy) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_title, root, attachToRoot, component);
    }

    @NonNull
    public static iy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static iy m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (iy) ViewDataBinding.inflateInternal(inflater, R.layout.item_common_zone_title, null, false, component);
    }

    @Nullable
    public String d() {
        return this.f39985c;
    }

    public abstract void n(@Nullable String itemData);

    @NonNull
    public static iy inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
