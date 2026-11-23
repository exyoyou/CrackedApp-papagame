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
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.quark.proxy.QuarkSearchClickProxy;
import com.join.kotlin.quark.viewmodel.QuarkSearchViewModel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f4 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageView f38249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f38250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f38251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Bindable
    protected QuarkSearchViewModel f38252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Bindable
    protected QuarkSearchClickProxy f38253f;

    protected f4(Object _bindingComponent, View _root, int _localFieldCount, ImageView backImage, TextView titleTextview, XQuickRecyclerView xrvList) {
        super(_bindingComponent, _root, _localFieldCount);
        this.f38249b = backImage;
        this.f38250c = titleTextview;
        this.f38251d = xrvList;
    }

    @Deprecated
    public static f4 b(@NonNull View view, @Nullable Object component) {
        return (f4) ViewDataBinding.bind(component, view, R.layout.activity_quark_search_result);
    }

    public static f4 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static f4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static f4 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (f4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_quark_search_result, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static f4 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (f4) ViewDataBinding.inflateInternal(inflater, R.layout.activity_quark_search_result, null, false, component);
    }

    @Nullable
    public QuarkSearchClickProxy d() {
        return this.f38253f;
    }

    @Nullable
    public QuarkSearchViewModel f() {
        return this.f38252e;
    }

    public abstract void t(@Nullable QuarkSearchClickProxy click);

    public abstract void u(@Nullable QuarkSearchViewModel vm);

    @NonNull
    public static f4 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
