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
import com.join.mgps.dto.CollectionBeanSub;

/* JADX INFO: loaded from: classes4.dex */
public abstract class yz extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected CollectionBeanSub f48000b;

    protected yz(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static yz b(@NonNull View view, @Nullable Object component) {
        return (yz) ViewDataBinding.bind(component, view, R.layout.item_discount_game_detail_similar_game);
    }

    public static yz bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static yz f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (yz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_similar_game, root, attachToRoot, component);
    }

    @NonNull
    public static yz inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static yz m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (yz) ViewDataBinding.inflateInternal(inflater, R.layout.item_discount_game_detail_similar_game, null, false, component);
    }

    @Nullable
    public CollectionBeanSub d() {
        return this.f48000b;
    }

    public abstract void n(@Nullable CollectionBeanSub itemData);

    @NonNull
    public static yz inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
