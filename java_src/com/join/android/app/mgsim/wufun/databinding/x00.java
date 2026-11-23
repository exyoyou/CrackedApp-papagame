package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x00 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f47031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected CommonGameInfoBean f47032c;

    protected x00(Object _bindingComponent, View _root, int _localFieldCount, SimpleDraweeView sdvIcon) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47031b = sdvIcon;
    }

    @Deprecated
    public static x00 b(@NonNull View view, @Nullable Object component) {
        return (x00) ViewDataBinding.bind(component, view, R.layout.item_find_mini_recent_game);
    }

    public static x00 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x00 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (x00) ViewDataBinding.inflateInternal(inflater, R.layout.item_find_mini_recent_game, root, attachToRoot, component);
    }

    @NonNull
    public static x00 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x00 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (x00) ViewDataBinding.inflateInternal(inflater, R.layout.item_find_mini_recent_game, null, false, component);
    }

    @Nullable
    public CommonGameInfoBean d() {
        return this.f47032c;
    }

    public abstract void n(@Nullable CommonGameInfoBean itemData);

    @NonNull
    public static x00 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
