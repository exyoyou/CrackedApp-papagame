package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.search.model.SearchTitleBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b60 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected SearchTitleBean f36241c;

    protected b60(Object _bindingComponent, View _root, int _localFieldCount, ConstraintLayout clMore) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f36240b = clMore;
    }

    @Deprecated
    public static b60 b(@NonNull View view, @Nullable Object component) {
        return (b60) ViewDataBinding.bind(component, view, R.layout.item_search_list_title);
    }

    public static b60 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static b60 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (b60) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_title, root, attachToRoot, component);
    }

    @NonNull
    public static b60 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static b60 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (b60) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_title, null, false, component);
    }

    @Nullable
    public SearchTitleBean d() {
        return this.f36241c;
    }

    public abstract void n(@Nullable SearchTitleBean itemData);

    @NonNull
    public static b60 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
