package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.search.viewmodel.SearchListGameViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class jo extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f40323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f40324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected SearchListGameViewModel f40325d;

    protected jo(Object _bindingComponent, View _root, int _localFieldCount, ImageView ivFeed, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f40323b = ivFeed;
        this.f40324c = xrvList;
    }

    @Deprecated
    public static jo b(@NonNull View view, @Nullable Object component) {
        return (jo) ViewDataBinding.bind(component, view, R.layout.fragment_search_list_game);
    }

    public static jo bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static jo f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (jo) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_search_list_game, root, attachToRoot, component);
    }

    @NonNull
    public static jo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static jo m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (jo) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_search_list_game, null, false, component);
    }

    @Nullable
    public SearchListGameViewModel d() {
        return this.f40325d;
    }

    public abstract void n(@Nullable SearchListGameViewModel vm);

    @NonNull
    public static jo inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
