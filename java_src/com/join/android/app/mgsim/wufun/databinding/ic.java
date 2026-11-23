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
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ic extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected List<BtTagSelecterBean> f39779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> f39780c;

    protected ic(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static ic b(@NonNull View view, @Nullable Object component) {
        return (ic) ViewDataBinding.bind(component, view, R.layout.datab_bt_hviewlist);
    }

    public static ic bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ic inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ic m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (ic) ViewDataBinding.inflateInternal(inflater, R.layout.datab_bt_hviewlist, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static ic n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (ic) ViewDataBinding.inflateInternal(inflater, R.layout.datab_bt_hviewlist, null, false, component);
    }

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> d() {
        return this.f39780c;
    }

    @Nullable
    public List<BtTagSelecterBean> f() {
        return this.f39779b;
    }

    public abstract void t(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> adapter);

    public abstract void u(@Nullable List<BtTagSelecterBean> recyclerviewDatas);

    @NonNull
    public static ic inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
