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
public abstract class g10 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final View f38659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected String f38661d;

    protected g10(Object _bindingComponent, View _root, int _localFieldCount, View divider, TextView text) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38659b = divider;
        this.f38660c = text;
    }

    @Deprecated
    public static g10 b(@NonNull View view, @Nullable Object component) {
        return (g10) ViewDataBinding.bind(component, view, R.layout.item_game_comment_spinner_layout);
    }

    public static g10 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static g10 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (g10) ViewDataBinding.inflateInternal(inflater, R.layout.item_game_comment_spinner_layout, root, attachToRoot, component);
    }

    @NonNull
    public static g10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static g10 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (g10) ViewDataBinding.inflateInternal(inflater, R.layout.item_game_comment_spinner_layout, null, false, component);
    }

    @Nullable
    public String d() {
        return this.f38661d;
    }

    public abstract void n(@Nullable String itemData);

    @NonNull
    public static g10 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
