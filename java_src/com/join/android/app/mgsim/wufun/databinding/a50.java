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
public abstract class a50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final RecyclerView f35666b;

    protected a50(Object _bindingComponent, View _root, int _localFieldCount, RecyclerView rvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f35666b = rvList;
    }

    @Deprecated
    public static a50 b(@NonNull View view, @Nullable Object component) {
        return (a50) ViewDataBinding.bind(component, view, R.layout.item_recommend_game_2);
    }

    public static a50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static a50 c(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (a50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game_2, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static a50 d(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (a50) ViewDataBinding.inflateInternal(inflater, R.layout.item_recommend_game_2, null, false, component);
    }

    @NonNull
    public static a50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return c(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static a50 inflate(@NonNull LayoutInflater inflater) {
        return d(inflater, DataBindingUtil.getDefaultComponent());
    }
}
