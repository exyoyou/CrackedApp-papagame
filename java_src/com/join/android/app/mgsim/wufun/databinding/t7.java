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
import com.join.mgps.dto.BannerBean;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t7 extends ViewDataBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Bindable
    protected List<BannerBean> f45143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bindable
    protected BaseDataBindingAdapter<Object, ViewDataBinding> f45144c;

    protected t7(Object _bindingComponent, View _root, int _localFieldCount) {
        super(_bindingComponent, _root, _localFieldCount);
    }

    @Deprecated
    public static t7 b(@NonNull View view, @Nullable Object component) {
        return (t7) ViewDataBinding.bind(component, view, R.layout.bt_tag_recycview_layout);
    }

    public static t7 bind(@NonNull View view) {
        return b(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static t7 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot) {
        return m(inflater, root, attachToRoot, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static t7 m(@NonNull LayoutInflater inflater, @Nullable ViewGroup root, boolean attachToRoot, @Nullable Object component) {
        return (t7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_tag_recycview_layout, root, attachToRoot, component);
    }

    @NonNull
    @Deprecated
    public static t7 n(@NonNull LayoutInflater inflater, @Nullable Object component) {
        return (t7) ViewDataBinding.inflateInternal(inflater, R.layout.bt_tag_recycview_layout, null, false, component);
    }

    @Nullable
    public BaseDataBindingAdapter<Object, ViewDataBinding> d() {
        return this.f45144c;
    }

    @Nullable
    public List<BannerBean> f() {
        return this.f45143b;
    }

    public abstract void t(@Nullable BaseDataBindingAdapter<Object, ViewDataBinding> adapter);

    public abstract void u(@Nullable List<BannerBean> recyclerviewDatas);

    @NonNull
    public static t7 inflate(@NonNull LayoutInflater inflater) {
        return n(inflater, DataBindingUtil.getDefaultComponent());
    }
}
