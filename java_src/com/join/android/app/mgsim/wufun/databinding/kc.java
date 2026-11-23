package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.viewModle.GameListViewModle;

/* JADX INFO: loaded from: classes4.dex */
public abstract class kc extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f40715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected XRecyclerView.f f40716c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> f40717d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected GameListViewModle f40718e;

    protected kc(Object _bindingComponent, View _root, int _localFieldCount, XRecyclerView recycleView) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f40715b = recycleView;
    }

    @Deprecated
    public static kc b(@NonNull View view, @Nullable Object component) {
        return (kc) ViewDataBinding.bind(component, view, R.layout.datab_gamelist_layout);
    }

    public static kc bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static kc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return x(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static kc x(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (kc) ViewDataBinding.inflateInternal(inflater, R.layout.datab_gamelist_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static kc y(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (kc) ViewDataBinding.inflateInternal(inflater, R.layout.datab_gamelist_layout, null, false, component);
    }

    public abstract void A(@Nullable XRecyclerView.f recycleviewListener);

    public abstract void B(@Nullable GameListViewModle viewModle);

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> d() {
        return this.f40717d;
    }

    @Nullable
    public XRecyclerView.f f() {
        return this.f40716c;
    }

    @Nullable
    public GameListViewModle w() {
        return this.f40718e;
    }

    public abstract void z(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> adapter);

    @NonNull
    public static kc inflate(@NonNull LayoutInflater inflater) {
        return y(inflater, DataBindingUtil.getDefaultComponent());
    }
}
