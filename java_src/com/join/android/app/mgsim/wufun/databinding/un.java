package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class un extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final FrameLayout f45779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f45780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Bindable
    protected NostalgiaGameViewModel f45781d;

    protected un(Object _bindingComponent, View _root, int _localFieldCount, FrameLayout clContainer, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f45779b = clContainer;
        this.f45780c = xrvList;
    }

    @Deprecated
    public static un b(@NonNull View view, @Nullable Object component) {
        return (un) ViewDataBinding.bind(component, view, R.layout.fragment_nostalgia_game_page);
    }

    public static un bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static un f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (un) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_nostalgia_game_page, root, attachToRoot, component);
    }

    @NonNull
    public static un inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static un m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (un) ViewDataBinding.inflateInternal(inflater, R.layout.fragment_nostalgia_game_page, null, false, component);
    }

    @Nullable
    public NostalgiaGameViewModel d() {
        return this.f45781d;
    }

    public abstract void n(@Nullable NostalgiaGameViewModel vm);

    @NonNull
    public static un inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
