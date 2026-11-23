package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.search.model.SearchTitleBean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class z50 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f48092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f48094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected SearchTitleBean f48095e;

    protected z50(Object _bindingComponent, View _root, int _localFieldCount, ImageView iv1, ImageView iv2, TextView tvText1) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f48092b = iv1;
        this.f48093c = iv2;
        this.f48094d = tvText1;
    }

    @Deprecated
    public static z50 b(@NonNull View view, @Nullable Object component) {
        return (z50) ViewDataBinding.bind(component, view, R.layout.item_search_list_more);
    }

    public static z50 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static z50 f(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (z50) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_more, root, attachToRoot, component);
    }

    @NonNull
    public static z50 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return f(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static z50 m(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (z50) ViewDataBinding.inflateInternal(inflater, R.layout.item_search_list_more, null, false, component);
    }

    @Nullable
    public SearchTitleBean d() {
        return this.f48095e;
    }

    public abstract void n(@Nullable SearchTitleBean itemData);

    @NonNull
    public static z50 inflate(@NonNull LayoutInflater inflater) {
        return m(inflater, DataBindingUtil.getDefaultComponent());
    }
}
