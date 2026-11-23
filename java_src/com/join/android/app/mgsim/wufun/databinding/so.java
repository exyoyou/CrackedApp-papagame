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
import com.join.kotlin.quark.viewmodel.SourceHopeListViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class so extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f44891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected SourceHopeListViewModel f44892c;

    protected so(Object _bindingComponent, View _root, int _localFieldCount, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f44891b = xrvList;
    }

    @Deprecated
    public static so b(@NonNull View view, @Nullable Object component) {
        return (so) ViewDataBinding.bind(component, view, R.layout.fragment_source_hope);
    }

    public static so bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static so f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (so) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_source_hope, root, attachToRoot, component);
    }

    @NonNull
    public static so inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static so m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (so) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_source_hope, null, false, component);
    }

    @Nullable
    public SourceHopeListViewModel d() {
        return this.f44892c;
    }

    public abstract void n(@Nullable SourceHopeListViewModel vm);

    @NonNull
    public static so inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
