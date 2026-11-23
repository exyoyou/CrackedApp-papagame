package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final RecyclerView f45138b;

    protected t50(Object _bindingComponent, View _root, int _localFieldCount, RecyclerView rvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45138b = rvList;
    }

    @Deprecated
    public static t50 b(@NonNull View view, @Nullable Object component) {
        return (t50) ViewDataBinding.bind(component, view, R.layout.item_search_list_ad_grid);
    }

    public static t50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static t50 c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (t50) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_ad_grid, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static t50 d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (t50) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_ad_grid, null, false, component);
    }

    @NonNull
    public static t50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static t50 inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
