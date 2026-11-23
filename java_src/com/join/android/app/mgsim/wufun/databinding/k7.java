package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k7 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final RecyclerView f40644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected List<CollectionBeanSub> f40645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> f40646d;

    protected k7(Object _bindingComponent, View _root, int _localFieldCount, RecyclerView recyclerView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f40644b = recyclerView;
    }

    @Deprecated
    public static k7 b(@NonNull View view, @Nullable Object component) {
        return (k7) ViewDataBinding.bind(component, view, R.layout.bt_hrecyclerview_gamelist_layout);
    }

    public static k7 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static k7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static k7 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (k7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_hrecyclerview_gamelist_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static k7 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (k7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_hrecyclerview_gamelist_layout, null, false, component);
    }

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> d() {
        return this.f40646d;
    }

    @Nullable
    public List<CollectionBeanSub> f() {
        return this.f40645c;
    }

    public abstract void t(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> adapter);

    public abstract void u(@Nullable List<CollectionBeanSub> recyclerviewDatas);

    @NonNull
    public static k7 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
