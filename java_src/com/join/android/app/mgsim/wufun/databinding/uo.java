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
import com.join.kotlin.quark.proxy.SourceShareClickProxy;
import com.join.kotlin.quark.viewmodel.SourceShareListViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class uo extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f45786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected SourceShareListViewModel f45787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected SourceShareClickProxy f45788d;

    protected uo(Object _bindingComponent, View _root, int _localFieldCount, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45786b = xrvList;
    }

    @Deprecated
    public static uo b(@NonNull View view, @Nullable Object component) {
        return (uo) ViewDataBinding.bind(component, view, R.layout.fragment_source_share);
    }

    public static uo bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static uo inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static uo m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (uo) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_source_share, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static uo n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (uo) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_source_share, null, false, component);
    }

    @Nullable
    public SourceShareClickProxy d() {
        return this.f45788d;
    }

    @Nullable
    public SourceShareListViewModel f() {
        return this.f45787c;
    }

    public abstract void t(@Nullable SourceShareClickProxy click);

    public abstract void u(@Nullable SourceShareListViewModel vm);

    @NonNull
    public static uo inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
