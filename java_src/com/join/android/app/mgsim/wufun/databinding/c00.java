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
public abstract class c00 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextView f36670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected String f36671c;

    protected c00(Object _bindingComponent, View _root, int _localFieldCount, TextView tvGiftTitle) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36670b = tvGiftTitle;
    }

    @Deprecated
    public static c00 b(@NonNull View view, @Nullable Object component) {
        return (c00) ViewDataBinding.bind(component, view, R.layout.item_discount_gift_title);
    }

    public static c00 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static c00 c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (c00) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_gift_title, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static c00 d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (c00) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_gift_title, null, false, component);
    }

    @NonNull
    public static c00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    public abstract void f(@Nullable String title);

    @Nullable
    public String getTitle() {
        return this.f36671c;
    }

    @NonNull
    public static c00 inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
