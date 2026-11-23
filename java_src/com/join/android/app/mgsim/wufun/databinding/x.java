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
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.search.viewmodel.CollectionSearchListGameViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final hw0 f47020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f47021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected CollectionSearchListGameViewModel f47022d;

    protected x(Object _bindingComponent, View _root, int _localFieldCount, hw0 titleBarLayout, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f47020b = titleBarLayout;
        this.f47021c = xrvList;
    }

    @Deprecated
    public static x b(@NonNull View view, @Nullable Object component) {
        return (x) ViewDataBinding.bind(component, view, R.layout.activity_collection_search_list_game);
    }

    public static x bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (x) ViewDataBinding.inflateInternal(inflater, R.layout.activity_collection_search_list_game, root, attachToRoot, component);
    }

    @NonNull
    public static x inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static x m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (x) ViewDataBinding.inflateInternal(inflater, R.layout.activity_collection_search_list_game, null, false, component);
    }

    @Nullable
    public CollectionSearchListGameViewModel d() {
        return this.f47022d;
    }

    public abstract void n(@Nullable CollectionSearchListGameViewModel vm);

    @NonNull
    public static x inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
